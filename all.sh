# !/bin/bash

# Check if a username was provided
if [ -z "$1" ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME="$1"

# read -p "Enter the name: " USERNAME    #abanoub

echo "Choose a method to search the user:"
echo "1. Using awk"
echo "2. Using cut"
echo "3. Using sed"
read -p "Enter your choice (1/2/3): " choice #1

case $choice in
  1) # Using awk
    echo "Searching using awk..."
      awk -F: -v user="$USERNAME" '$1 == user {
          print "Username: " $1
          print "UID: " $3
          print "GID: " $4
          print "Full Name: " $5
          print "Home Dir: " $6
          print "Shell: " $7
      }' /etc/passwd    ;;
    
  2) # Using cut
    echo "Searching using cut..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)
    if [ -n "$USERINFO" ]; then
      echo "$USERINFO" | cut -d: -f1,3,4,5,6,7
    else
      echo "User '$USERNAME' not found."
    fi
    ;;
    
  3) # Using sed
    echo "Searching using sed..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)
    if [ -n "$USERINFO" ]; then
      echo "$USERINFO" | sed -n '1p'
    else
      echo "User '$USERNAME' not found."
    fi
    ;;
    
  *) # Invalid option
    echo "Invalid choice. Please select 1, 2, or 3."
    exit 1
    ;;
esac
