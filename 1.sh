#!/bin/bash

# Create user
create_user() {
    echo "Enter the username to create:"
    read username
    sudo adduser $username
}

# Change group for a user
change_group() {
    echo "Enter the username for which you want to change the group:"
    read username
    echo "Enter the new group name:"
    read groupname
    sudo usermod -g $groupname $username
}

# Create a group
create_group() {
    echo "Enter the group name to create:"
    read groupname
    sudo groupadd $groupname
}

# Check password status
check_password_status() {
    echo "Enter the username to check password status:"
    read username
    sudo passwd -S $username
}

# Change password
change_password() {
    echo "Enter the username to change password:"
    read username
    sudo passwd $username
}

# Lock user account
lock_account() {
    echo "Enter the username to lock the account:"
    read username
    sudo usermod -L $username
}

# Unlock user account
unlock_account() {
    echo "Enter the username to unlock the account:"
    read username
    sudo usermod -U $username
}

# Delete user
delete_user() {
    echo "Enter the username to delete:"
    read username
    sudo userdel -r $username
}

# Main menu
while :
do
    echo "------ MENU ------"
    echo "i. Create a user"
    echo "ii. Change the group for a user"
    echo "iii. Create a group"
    echo "iv. Check password status"
    echo "v. Change Password"
    echo "vi. Lock user account"
    echo "vii. Unlock user account"
    echo "viii. Delete user"
    echo "------------------"
    echo "Enter your choice (i/viii):"
    read choice

    case $choice in
        i) create_user ;;
        ii) change_group ;;
        iii) create_group ;;
        iv) check_password_status ;;
        v) change_password ;;
        vi) lock_account ;;
        vii) unlock_account ;;
        viii) delete_user ;;
        *) echo "Invalid option";;
    esac
done
