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

CRED_FILE="/opt/linux-admin-toolkit/credentials/${user}.cred"

echo "username: $user" > "$CRED_FILE"
echo "password: $password" >> "$CRED_FILE"

chmod 600 "$CRED_FILE"

log "User created: $user"

echo "Temporary password: $password"

}
