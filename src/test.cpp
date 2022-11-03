#include <restinio/all.hpp>
#include <json_dto/pub.hpp>
#include <string>

template <typename RESP>
RESP init_resp(RESP resp) {
    resp.append_header(restinio::http_field::server, "Sixcurity");
    resp.append_header_date_field();
    resp.append_header(restinio::http_field::content_type, "application/json");
    return resp;
}

using router_t = restinio::router::express_router_t<>;

struct LoginRequest {
    std::string username;
    std::string password;

    template <typename Json_Io>
    void json_io(Json_Io &io) {
        io
            &json_dto::mandatory("username", username)
            &json_dto::mandatory("password", password);
    }
};

struct LoginResponse {
    std::string token;

    template <typename Json_Io>
    void json_io(Json_Io &io) {
        io &json_dto::mandatory("token", token);
    }
};

auto create_request_handler() {
    auto router = std::make_unique<router_t>();

    router->http_post("/login",
        [](auto req, auto params) {
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
    );

    return router;
}

int main() {
    using traits_t =
        restinio::traits_t<
        restinio::asio_timer_manager_t,
        restinio::single_threaded_ostream_logger_t,
        router_t >;

    restinio::run(
        restinio::on_this_thread<traits_t>()
        .port(8080)
        .address("localhost")
        .request_handler(create_request_handler())
    );

    return 0;
}