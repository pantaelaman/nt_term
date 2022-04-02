#include "nt.h"

NetworkTableInstance::NetworkTableInstance() {};

NetworkTableInstance NetworkTable::instance = NetworkTableInstance();

NetworkTableInstance *NetworkTable::getNTInstance() {
    return &instance;
}

int NetworkTableInstance::getNumber(std::string name, int def) {
    return 0;
}

void NetworkTableInstance::putNumber(std::string name, int number) {}

bool NetworkTableInstance::getBoolean(std::string name, bool def) {
    return true;
}

void NetworkTableInstance::putBoolean(std::string name, bool boolean) {}
