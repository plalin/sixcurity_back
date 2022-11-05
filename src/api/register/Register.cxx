#include "Register.hxx"
#include "../../db/User-odb.hxx"
#include "../../db/UserUtil.hxx"
#include "../../util/Util.hxx"

#include <restinio/all.hpp>
#include <nlohmann/json.hpp>
#include <odb/database.hxx>
#include <string>
#include <iostream>
#include <openssl/sha.h>
#include <sstream>

const std::string SUCCESS = "Success";
const std::string USERNAME_TAKEN = "Username taken";
const std::string NICKNAME_TAKEN = "Nickname taken";
const std::string INVALID_USERNAME = "Invalid username";
const std::string INVALID_PASSWORD = "Invalid password";
const std::string INVALID_NICKNAME = "Invalid nickname";

using json = nlohmann::json;
using namespace registerdata;


bool isUsernameTaken(const std::string &username, std::shared_ptr<odb::database> &db)
{
    try {
        odb::transaction t(db->begin());
        odb::result<User> result(db->query<User>(odb::query<User>::username == username));
        if (result.empty()) {
            return false;
        }
        return true;
    }
    catch (const odb::exception &e) {
        std::cerr << e.what() << std::endl;
    }
}

bool isNicknameTaken(const std::string &nickname, std::shared_ptr<odb::database> &db) {
    try {
        odb::transaction t(db->begin());
        odb::result<User> result(db->query<User>(odb::query<User>::nickname == nickname));
        if (result.empty()) {
            return false;
        }
        return true;
    }
    catch (const odb::exception &e) {
        std::cerr << e.what() << std::endl;
    }
}

// TODO: please fix here
bool isValidPassword(const std::string &password) {
    if (password.length() < 8) {
        return false;
    }
    return true;
}

// TODO: please fix here
bool isValidUsername(const std::string &username) {
    if (username.length() < 3) {
        return false;
    }
    return true;
}

// TODO: please fix here
bool isValidNickname(const std::string &nickname) {
    if (nickname.length() < 3) {
        return false;
    }
    return true;
}

restinio::request_handling_status_t handleRegister(
    const restinio::request_handle_t &req,
    std::shared_ptr<database> db
) {
    auto resp = init_resp(req->create_response());

    auto body = req->body();
    auto body_str = restinio::cast_to<std::string>(body);
    auto req_json = nlohmann::json::parse(body_str);

    RegisterRequest register_req = req_json.get<RegisterRequest>();

    //TODO: Check if password is valid
    register_req.password = sha256(register_req.password);

    //TODO: Check if username is valid
    //TODO: Check if nickname is valid
    if (isUsernameTaken(register_req.username, db)) {
        RegisterResponse resp_data = { USERNAME_TAKEN };
        json resp_json = resp_data;
        resp.set_body(resp_json.dump()).done();
        return restinio::request_accepted();
    }
    if(isNicknameTaken(register_req.nickname, db)) {
        RegisterResponse resp_data = { NICKNAME_TAKEN };
        json resp_json = resp_data;
        resp.set_body(resp_json.dump()).done();
        return restinio::request_accepted();
    }
    if (!isValidPassword(register_req.password)) {
        RegisterResponse resp_data = { INVALID_PASSWORD };
        json resp_json = resp_data;
        resp.set_body(resp_json.dump()).done();
        return restinio::request_accepted();
    }
    
    createUser(db, register_req.username, register_req.nickname, register_req.password);

    RegisterResponse resp_data = { SUCCESS };
    json res_json = resp_data;

    resp.set_body(res_json.dump()).done();

    return restinio::request_accepted();
}
