
read -p "Enter the name: " USERNAME




    echo "Searching using sed..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)
    if [ -n "$USERINFO" ]; then
      echo "$USERINFO" | sed -n '1p'
    else
      echo "User '$USERNAME' not found."
    fi