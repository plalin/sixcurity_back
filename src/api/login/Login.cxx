#include "Login.hxx"
#include "../../util/Util.hxx"
#include "../../db/User-odb.hxx"

#include <nlohmann/json.hpp>

using json = nlohmann::json;
using namespace logindata;

restinio::request_handling_status_t handleLogin(const restinio::request_handle_t &req, std::shared_ptr<database> &db) {
    auto resp = init_resp(req->create_response());

    auto body = req->body();
    auto body_str = restinio::cast_to<std::string>(body);
    json req_json = nlohmann::json::parse(body_str);

    LoginData login_req = req_json.get<LoginData>();
    std::string hashed_password = sha256(login_req.password);

    try {
        odb::transaction t(db->begin());
        std::auto_ptr<User> result(db->query_one<User>(odb::query<User>::username == login_req.username));
        if (result.get() == NULL) {
            resp.set_body(json({ {"response", "Username not found"} }).dump());
            return resp.done();
        }
        if (result->get_hashed_password() != hashed_password) {
            resp.set_body(json({{"response", "Incorrect password"}}).dump());
            return resp.done();
        }
        resp.set_body(json({ {"response", "Success"} }).dump());

        t.commit();
        return resp.done();
    }
    catch (const odb::exception &e) {
        std::cerr << e.what() << std::endl;
    }

    return restinio::request_accepted();
}
