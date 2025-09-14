#!/bin/bash

# Check if a username was provided
if [ -z "$1" ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME="$1"


    echo "Searching using cut..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)
    if [ -n "$USERINFO" ]; then
      echo "$USERINFO" | cut -d: -f1,3,4,5,6,7
    else
      echo "User '$USERNAME' not found."
    fi