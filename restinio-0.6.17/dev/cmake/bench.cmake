
IF (NOT BENCH)
	message(FATAL_ERROR "BENCH is not defined!")
ENDIF ()

IF (NOT BENCH_SRCFILES)
	SET(BENCH_SRCFILES main.cpp)
ENDIF ()

add_executable(${BENCH} ${BENCH_SRCFILES})

TARGET_LINK_LIBRARIES(${BENCH} PRIVATE restinio::restinio)

link_threads_if_necessary(${BENCH})
link_atomic_if_necessary(${BENCH})

IF (WIN32)
	TARGET_LINK_LIBRARIES(${BENCH} PRIVATE wsock32 ws2_32)
ENDIF ()

IF (RESTINIO_INSTALL_BENCHES)
	install(TARGETS ${BENCH} DESTINATION bin)
ENDIF()
