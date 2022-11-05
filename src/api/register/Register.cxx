#include "Register.hxx"
#include "../../db/UserUtil.hxx"
#include "../../util/Util.hxx"

#include <restinio/all.hpp>
#include <nlohmann/json.hpp>
#include <odb/database.hxx>
#include <string>
#include <iostream>

const std::string SUCCESS = "Success";

using json = nlohmann::json;
using namespace registerdata;

restinio::request_handling_status_t HandleRegister(
    const restinio::request_handle_t &req,
    std::shared_ptr<database> db
) {
    std::cout << "req accepted" << std::endl;
    fflush(stdout);
    auto resp = init_resp(req->create_response());

    auto body = req->body();
    auto body_str = restinio::cast_to<std::string>(body);
    auto req_json = nlohmann::json::parse(body_str);

    RegisterRequest register_req = req_json.get<RegisterRequest>();
    std::cout << "json accepted" << std::endl;
    fflush(stdout);
    //TODO: Hash password
    //TODO: Check if username is taken
    //TODO: Check if nickname is taken
    //TODO: Check if password is valid
    //TODO: Check if username is valid
    //TODO: Check if nickname is valid
    CreateUser(db, register_req.username, register_req.nickname, register_req.password);

    RegisterResponse register_res = { SUCCESS };
    json res_json = register_res;

    resp.set_body(res_json.dump()).done();

    return restinio::request_accepted();
}
