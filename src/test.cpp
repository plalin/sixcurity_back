#include <restinio/all.hpp>
#include <json_dto/pub.hpp>

#include <string>

#include "api/login/Login.hxx"

using router_t = restinio::router::express_router_t<>;

auto create_request_handler() {
    auto router = std::make_unique<router_t>();

    router->http_post("/login",
        [](const auto &req, const auto &) {
            return restinio::request_accepted();
            // return HandleLogin(req, params);
        });

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