#ifndef _REGISTER_HXX_
#define _REGISTER_HXX_

#include <restinio/all.hpp>
#include <odb/database.hxx>
#include <nlohmann/json.hpp>
#include <memory>

using namespace odb::core;

using json = nlohmann::json;

namespace registerdata{
 struct RegisterRequest {
    std::string username;
    std::string nickname;
    std::string password;
};

struct RegisterResponse {
    std::string response;
};

NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE(RegisterRequest, username, nickname, password)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE(RegisterResponse, response)
} // namespace registerdata

restinio::request_handling_status_t HandleRegister(
     const restinio::request_handle_t &req,
     std::shared_ptr<database> db
);

#endif