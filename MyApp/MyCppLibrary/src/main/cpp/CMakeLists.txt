# the minimum version of CMake.
cmake_minimum_required(VERSION 3.4.1)
project(MyApp)

set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

include_directories(${NATIVERENDER_ROOT_PATH}
                    ${NATIVERENDER_ROOT_PATH}/include)

add_library(mycpplibrary SHARED hello.cpp)
target_link_libraries(mycpplibrary PUBLIC libace_napi.z.so)