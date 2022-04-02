cmake_minimum_required(VERSION 3.10)

project(ntterm VERSION 1.0)

add_executable(ntterm src/main.cc src/nt.cc src/util.cc)

find_package(tvision CONFIG)
target_link_libraries(ntterm tvision::tvision)
target_compile_definitions(ntterm PUBLIC _GLIBCXX_USE_CXX11_ABI=0)

install(TARGETS ntterm)
