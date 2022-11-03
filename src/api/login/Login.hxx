#ifndef _LOGIN_HXX_
#define _LOGIN_HXX_

#include <restinio/all.hpp>

using router_t = restinio::router::express_router_t<>;

restinio::request_handling_status_t HandleLogin(const auto &req);

#endif