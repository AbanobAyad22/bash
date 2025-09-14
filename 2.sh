#!/bin/bash

read -p "Enter the name: " USERNAME


echo "Searching using awk..."
awk -F: -v user="$USERNAME" '$1 == user {
    print "Username: " $1
    print "password: " $2
    print "UID: " $3
    print "GID: " $4
    print "Full Name: " $5
    print "Home Dir: " $6
    print "Shell: " $7
}' /etc/passwd