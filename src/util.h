#pragma once

#include <string>
#include <stdexcept>
#include <memory>

struct ValueCreaterData {
    char value_name[128];
};

template<typename ... Args>
std::string string_format(const std::string& format, Args ... args);
