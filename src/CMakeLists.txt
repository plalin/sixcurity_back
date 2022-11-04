cmake_minimum_required(VERSION 3.10)

if(COMMAND cmake_policy)
	cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

set(PRJ SIXCURITY)

project(${PRJ} CXX)

find_package(fmt CONFIG REQUIRED)
find_package(unofficial-http-parser CONFIG REQUIRED)
find_package(restinio CONFIG REQUIRED)
find_package(SQLiteCpp CONFIG REQUIRED)
find_package(optional-lite CONFIG REQUIRED)

add_executable(${PRJ}
	main.cpp)

target_link_libraries(${PRJ} PRIVATE restinio::restinio)
target_link_libraries(${PRJ} PRIVATE SQLiteCpp)
target_link_libraries(${PRJ} PRIVATE nonstd::optional-lite) 
target_link_libraries(${PRJ} PRIVATE odb) 
target_link_libraries(${PRJ} PRIVATE odb-mysql) 

#link_directories(${CMAKE_CURRENT_SOURCE_DIR}/libodb-2.5.0-b.23/odb)
#link_directories(${CMAKE_CURRENT_SOURCE_DIR}/libodb-mysql-2.5.0-b.23/odb/mysql)

link_directories(/usr/local/lib)

target_link_libraries(${PRJ} PUBLIC /usr/local/lib/libodb.a)
target_link_libraries(${PRJ} PUBLIC /usr/local/lib/libodb-mysql.a)

if (UNIX)
	set(THREADS_PREFER_PTHREAD_FLAG ON)
	find_package(Threads)
	if (Threads_FOUND)
		target_link_libraries(${PRJ} PRIVATE Threads::Threads)
	endif ()
	#target_link_libraries(${PRJ} PRIVATE sqlite3)
	target_link_libraries(${PRJ} PRIVATE dl)
endif ()

install(
	TARGETS ${PRJ}
	RUNTIME DESTINATION bin
)
