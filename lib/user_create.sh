#!/bin/bash

#creating the user(s)

create_user() {

user="$1"

validate_user "$user" || return

if id "$user" &>/dev/null
then
    echo "User already exists: $user"
    return
fi

echo "Creating user: $user"

useradd -m -s /bin/bash "$user"

password=$(generate_password)

echo "$user:$password" | chpasswd

chage -d 0 "$user"

echo "$user : $password" >> .user_credentials

log "User created: $user"

echo "Temporary password: $password"

}
