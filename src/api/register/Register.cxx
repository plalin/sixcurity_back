#include "Register.hxx"
#include "../../db/UserUtil.hxx"
#include "../../util/Util.hxx"

#include <restinio/all.hpp>
#include <nlohmann/json.hpp>
#include <odb/database.hxx>
#include <string>

const std::string SUCCESS = "Success";

using json = nlohmann::json;

restinio::request_handling_status_t HandleRegister(
    const restinio::request_handle_t &req,
    std::shared_ptr<database> db
) {
    auto body = req->body();
    auto body_str = restinio::cast_to<std::string>(body);
    auto req_json = nlohmann::json::parse(body_str);

    RegisterRequest register_req = req_json.get<RegisterRequest>();
    //TODO: Hash password
    //TODO: Check if username is taken
    //TODO: Check if nickname is taken
    //TODO: Check if password is valid
    //TODO: Check if username is valid
    //TODO: Check if nickname is valid
    // CreateUser(db, register_req.username, register_req.nickname, register_req.password);

    RegisterResponse register_res = { SUCCESS };
    auto res_json = nlohmann::json::parse(register_res);

    auto resp = init_resp(req->create_response());
    resp.set_body(res_json).done();

    return restinio::request_accepted();
}

void to_json(json &j, const RegisterRequest &p) {
    j = json{
         { "username", p.username },{ "nickname", p.nickname },{ "password", p.password }
    };
}

void from_json(const json &j, RegisterRequest &p) {
    j.at("username").get_to(p.username);
    j.at("nickname").get_to(p.nickname);
    j.at("password").get_to(p.password);
}
