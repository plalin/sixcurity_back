#ifndef _REGISTER_HXX_
#define _REGISTER_HXX_

#include <restinio/all.hpp>
#include <odb/database.hxx>
#include <nlohmann/json.hpp>
#include <memory>

using namespace odb::core;

using json = nlohmann::json;

struct RegisterRequest {
    std::string username;
    std::string nickname;
    std::string password;
};

struct RegisterResponse {
    std::string response;
};

restinio::request_handling_status_t HandleRegister(std::shared_ptr<restinio::generic_request_t<restinio::no_extra_data_factory_t::data_t> > const &req
    // const restinio::request_handle_t &req
    // , std::shared_ptr<database> db
);



#endif