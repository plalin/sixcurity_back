#ifndef _LOGIN_HXX_
#define _LOGIN_HXX_

#include <restinio/all.hpp>
#include "LoginData.hxx"

using router_t = restinio::router::express_router_t<>;

restinio::request_handle_t HandleLogin(const auto &req);

#endif