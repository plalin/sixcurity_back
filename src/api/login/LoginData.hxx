#ifndef __LOGIN_DATA_HXX__
#define __LOGIN_DATA_HXX__

#include <string>
#include <json_dto/pub.hpp>

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

#endif