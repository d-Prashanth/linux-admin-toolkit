#!/bin/bash

#user deletion module
delete_user() {

user="$1"

if ! id "$user" &>/dev/null
then
    echo "User does not exist: $user"
    return
fi

echo "Deleting user: $user"

userdel -r "$user"

log "User deleted: $user"

}
