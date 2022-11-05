#ifndef _UTIL_HXX_
#define _UTIL_HXX_

#include <string>
#include <odb/core.hxx>

class User {
public:
    User() {}
    User(const std::string &_username,
        const std::string &_nickname,
        const std::string &_hashed_password) :
        username(_username),
        nickname(_nickname),
        hashed_password(_hashed_password) {};

private:
    friend class odb::access;

    std::string username;
    std::string nickname;
    std::string hashed_password;
};
#pragma db object(User)
#pragma db member(User::username) id

#endif