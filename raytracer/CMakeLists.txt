cmake_minimum_required (VERSION 3.10)
project (raytracer)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_compile_options(-g -Wall -Wextra -Wpedantic -Wl,--stack,16777216)

include(FetchContent)

# Google Test hinzufügen
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
FetchContent_MakeAvailable(googletest)

# Link zu Google Test hinzufügen
enable_testing()

add_executable(math_test math_test.cc math.cc)
target_link_libraries(math_test gtest gtest_main)

add_executable(geometry_test geometry_test.cc geometry.cc math.cc)
target_link_libraries(geometry_test gtest gtest_main)

add_executable(raytracer raytracer.cc math.cc geometry.cc)

# cmake -G "MinGW Makefiles" -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -S .
# mingw32-make
