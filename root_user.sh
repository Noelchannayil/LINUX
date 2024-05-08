#!/bin/bash

check_root_user() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "Error: This script must be run as root."
        exit 1
    fi
}

check_root_user

echo "The script is running as root."
