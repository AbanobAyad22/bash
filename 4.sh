read -p "Enter the name: " USERNAME # abanoub

    echo "Searching using cut..."
    USERINFO=$(grep "^$USERNAME:" /etc/passwd)    # abanoub:x:1000:1000::/home/abanoub:/bin/bash
    if [ -n "$USERINFO" ]; then
      echo "$USERINFO" | cut -d: -f1,3,4,5,6,7  ## abanoub:1000:1000::/home/abanoub:/bin/bash
    else
      echo "User '$USERNAME' not found."
    fi