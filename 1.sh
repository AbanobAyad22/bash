#!/bin/bash

# Check if a username was provided
if [ -z "$1" ]; then
  echo "Users not exist: $0 username"
  exit 1
fi

USERNAME="$1"


echo "Searching using awk..."
awk -F: -v user="$USERNAME" '$1 == user {
    print "Username: " $1
    print "UID: " $3
    print "GID: " $4
    print "Full Name: " $5
    print "Home Dir: " $6
    print "Shell: " $7
}' /etc/passwd