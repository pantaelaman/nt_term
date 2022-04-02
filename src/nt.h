#pragma once

#include <map>
#include <string>

class NetworkTableInstance {
public:

    NetworkTableInstance();
    int getNumber(std::string name, int def);
    void putNumber(std::string name, int number);
    bool getBoolean(std::string name, bool def);
    void putBoolean(std::string name, bool boolean);

};

class NetworkTable {
private:
    static NetworkTableInstance instance;

public:

    static NetworkTableInstance *getNTInstance();

};
