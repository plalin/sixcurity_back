#include "UserUtil.hxx"
#include "User.hxx"

#include <memory>
#include <iostream>

#include <odb/transaction.hxx>

void CreateUser(std::shared_ptr<database> db,
    const std::string &username,
    const std::string &nickname,
    const std::string &hashed_password) {
    try {
        transaction t(db->begin());

        User user(username, nickname, hashed_password);
        db->persist(user);
        t.commit();
    }
    catch (const odb::exception &e) {
        std::cerr << e.what() << std::endl;
    }
}