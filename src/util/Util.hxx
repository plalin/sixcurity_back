#ifndef _UTIL_HXX_
#define _UTIL_HXX_

#include <restinio/all.hpp>
#include <openssl/sha.h>

template <typename RESP>
RESP init_resp(RESP resp) {
    resp.append_header(restinio::http_field::server, "Sixcurity");
    resp.append_header_date_field();
    resp.append_header(restinio::http_field::content_type, "application/json");
    return resp;
}

std::string sha256(const std::string str);

#endif