#include <restinio/all.hpp>

#include <odb/database.hxx>
#include <odb/mysql/database.hxx>

#include <string>
#include <memory>
#include <iostream>

#include "api/login/Login.hxx"
#include "api/register/Register.hxx"

using namespace odb::core;

using router_t = restinio::router::express_router_t<>;
using status = restinio::request_handling_status_t;

auto create_request_handler(std::shared_ptr<database> &db) {
    auto router = std::make_unique<router_t>();

    // router->http_post("/login",
    //     [](const auto &req, const auto &) {
    //         return HandleLogin(req);
    //     });

    std::function<status(const restinio::request_handle_t &, std::shared_ptr<database>)>
        register_handler = HandleRegister;
    router->http_post("/register",
        [&db, &register_handler](const auto &req, const auto &) {
            std::cout << "in_func" << std::endl;
            fflush(stdout);
            return register_handler(req, db);
        });

    return router;
}

int main(int argc, char *argv[]) {

    std::shared_ptr<database> db(new odb::mysql::database(argc, argv));

    using traits_t =
        restinio::traits_t<
        restinio::asio_timer_manager_t,
        restinio::single_threaded_ostream_logger_t,
        router_t >;

    restinio::run(
        restinio::on_this_thread<traits_t>()
        .port(8080)
        .address("localhost")
        .request_handler(create_request_handler(db))
    );

    return 0;
}

