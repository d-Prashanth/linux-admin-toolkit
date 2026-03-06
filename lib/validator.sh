#!/bin/bash

#validate the username(s) if invalid usernames are passed
validate_user() {

user="$1"

if [[ ! "$user" =~ ^[a-z_][a-z0-9_-]*$ ]]
then
    echo "Invalid username: $user"
    return 1
fi

return 0

}
