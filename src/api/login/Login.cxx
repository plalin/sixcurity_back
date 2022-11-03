#include "Login.hxx"
#include "../util/Util.hxx"

restinio::request_handle_t HandleLogin(const auto &req) {
    auto resp = init_resp(req->create_response());

    std::string response_body;
    LoginRequest request_body;

    json_dto::from_json<LoginRequest>(req->body(), request_body);

    if (request_body.username != "admin") {
        LoginResponse response;
        response.token = "invalid";
        response_body = json_dto::to_json(response);

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
}
