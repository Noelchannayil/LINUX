#!/bin/bash

# yum commands/options
yum_commands() {
    echo "Enter the yum command or option:"
    read yum_command
    sudo yum $yum_command
}

# Display available packages
available_packages() {
    sudo yum list available
}

# Display installed packages
installed_packages() {
    sudo yum list installed
}

# Display package information
package_information() {
    echo "Enter the package name:"
    read package_name
    sudo yum info $package_name
}

# Find package
find_package() {
    echo "Enter the keyword to search for the package:"
    read keyword
    sudo yum search $keyword
}

# Check yum history
check_yum_history() {
    sudo yum history
}

# Install package
install_package() {
    echo "Enter the package name to install:"
    read package_name
    sudo yum install $package_name
}

# Update package
update_package() {
    echo "Enter the package name to update:"
    read package_name
    sudo yum update $package_name
}

# Upgrade package
upgrade_package() {
    sudo yum upgrade
}

# Clean cache
clean_cache() {
    sudo yum clean all
}

# Main menu
while :
do
    echo "------ MENU ------"
    echo "i. yum commands/options"
    echo "ii. Available packages"
    echo "iii. Installed packages"
    echo "iv. Package Information"
    echo "v. Find package"
    echo "vi. Check yum history"
    echo "vii. Install package"
    echo "viii. Update package"
    echo "ix. Upgrade package"
    echo "x. Clean cache"
    echo "------------------"
    echo "Enter your choice (i/x):"
    read choice

    case $choice in
        i) yum_commands ;;
        ii) available_packages ;;
        iii) installed_packages ;;
        iv) package_information ;;
        v) find_package ;;
        vi) check_yum_history ;;
        vii) install_package ;;
        viii) update_package ;;
        ix) upgrade_package ;;
        x) clean_cache ;;
        *) echo "Invalid option";;
    esac
done
