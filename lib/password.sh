#!/bin/bash

#generate random password while creating a new user(s)
generate_password() {

openssl rand -base64 12

}
