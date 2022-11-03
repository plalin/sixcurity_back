#include "Login.hxx"
#include "../util/Util.hxx"

#include <nlohmann/json.hpp>

restinio::request_handling_status_t HandleLogin(const auto &req) {
    auto resp = init_resp(req->create_response());

    //TODO: fix whole thing

    /*
    std::string response_body;
    LoginRequest request_body;

    try {
        auto body = req->body();
        auto body_str = restinio::cast_to<std::string>(body);
        request_body = nlohmann::json::parse(body_str);
    }
    catch (const std::exception &e) {
        resp.set_body(e.what());
        resp.set_status_code(restinio::status_bad_request());
        return resp.done();
    }

    if (request_body["username"] != "admin") {
        response;
        response.token = "invalid";

        resp.set_body(response_body).done();
        return restinio::request_rejected();
    }
    else {
        LoginResponse response;
        response.token = "valid";
        response_body = json_dto::to_json(response);

        resp.set_body(response_body).done();
        return restinio::request_accepted();
    }
    */
    return restinio::request_accepted();
}
