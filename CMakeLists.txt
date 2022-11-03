cmake_minimum_required(VERSION 3.11)

project(
  SIXCURITY
  LANGUAGES CXX)
set(CMAKE_CXX_COMPILER g++)
add_definitions("-Wall -std=c++11")

add_subdirectory(restinio)

add_executable (program test.cpp RESTINIO)
