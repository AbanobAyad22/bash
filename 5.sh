#!/bin/bash

# Check if a username was provided
if [ -z "$1" ]; then
  echo "Users not exist: $0 username"
  exit 1
fi
USERNAME="$1"



    echo "Searching using sed..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)
    if [ -n "$USERINFO" ]; then
            echo "$USERINFO" | sed -n '1p'
    else
      echo "User '$USERNAME' not found."
    fi