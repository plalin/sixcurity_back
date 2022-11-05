#ifndef _LOGIN_HXX_
#define _LOGIN_HXX_

#include <restinio/all.hpp>
#include <nlohmann/json.hpp>
#include <odb/database.hxx>
#include <string>

using odb::core::database;
using router_t = restinio::router::express_router_t<>;

namespace logindata {
    struct LoginData {
        std::string username;
        std::string password;
    };
    NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE(LoginData, username, password);
}

restinio::request_handling_status_t handleLogin(const restinio::request_handle_t &req, std::shared_ptr<database> &db);

#endif