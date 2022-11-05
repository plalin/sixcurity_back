#ifndef __USER_UTIL_HXX__
#define __USER_UTIL_HXX__

#include <string>
#include <memory>
#include <odb/database.hxx>

using namespace odb::core;

void createUser(std::shared_ptr<database> db,
    const std::string &username,
    const std::string &nickname,
    const std::string &hashed_password);

#endif