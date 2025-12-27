# case   --------------- > switch  <----------
# -----
# case Expression in  ----- > EXpression = 1   ------ > 2
#     1) 
#         echo "one" ;;
#     2) 
#         ls ;;
#     *) 
#         echo "wrong number" ;;
# esac

# echo -n "Enter a number between 1 and 2: "
# read num
# case $num in
#     1) 
#         echo "one" ;;
#     2) 
#         ls ;;
#     *) 
#         echo "wrong number" ;;
# esac


# echo -n "Enter a color (red, blue, green): "
# read color


# read -p "Enter a color (red, blue, green): " color

# case $color in 
#     "red") 
#         echo "red" ;;
#     "blue") 
#         echo "blue" ;;
#     "green") 
#         echo "green" ;;
#     *) 
#         echo "no color found" ;;
# esac

# calculator
# ----------
# read -p "Enter first number: " num1
# read -p "Enter second number: " num2
# read -p "Enter operation (+, -, *, /): " op
# case $num1-$num2-$op in 
#     $num1-$num2-+) 
#         echo "Sum: $((num1 + num2))" ;;
#     $num1-$num2--) 
#         echo "sub: $((num1 - num2))" ;;
#     $num1-$num2-\*) 
#         echo "mul: $((num1 * num2))" ;;
#     $num1-$num2-/) 
#         echo "div: $((num1 / num2))" ;;  
#     *) 
#         echo "invalid operation" ;;                  
# esac



# read -p "Enter first number: " num1
# read -p "Enter second number: " num2
# read -p "Enter operation (+, -, *, /): " op
# case $op in 
#     +) 
#         echo "Sum: $num1 + $num2 =  $((num1 + num2))" ;;
#     -) 
#         echo "sub: $num1 - $num2 = $((num1 - num2))" ;;
#     \*) 
#         echo "mul: $num1 * $num2 = $((num1 * num2))" ;;
#     /) 
#         echo "div: $num1 / $num2 =  $((num1 / num2))" ;;  
#     *) 
#         echo "invalid operation" ;;                  
# esac


# read -p "Enter operation (+, -, *, /): " op
# case $op in 
#     +) 
#         echo "Sum: $1 + $2 =  $(($1 + $2))" ;;
#     -) 
#         echo "sub: $1 - $2 = $(($1 - $2))" ;;
#     \*) 
#         echo "mul: $1 * $2 = $(($1 * $2))" ;;
#     /) 
#         echo "div: $1 / $2 =  $(($1 / $2))" ;;  
#     *) 
#         echo "invalid operation" ;;                  
# esac


# echo "   $1  $3  $2  =   $(( $1 $3 $2  ))"



# case $1 in 
#     [0-9]*)
#         echo "starts with digit";;
#     [a-z]*)
#         echo "lowercase letter";;
#     [A-Z]*)
#         echo "uppercase letter";;
# esac        






# -------------------------------------------
# condition
# ---------

# if [ condition ]; then
#     commands
# fi    
# ------
# if    [[  condition ]]; then               ---------- > with regex
#     commands
# fi

# # ------------------------------
# operators for condition
# ------------------------------

# numbers
# -------
# -eq  : equal                  --------- >  =
# -ne  : not equal              -------- >  !=
# -lt  : less than              ---------- <
# -le  : less than or equal     ----------  <=
# -gt  : greater than           ---------  >
# -ge  : greater than or equal  ---------  >=
# ------------------------------
# string
# -------
# =     : equal                 ---------  ==
# !=    : not equal             --------  !=
# =~    : matches regex         --------  =~
# ------------------------------
# files
# -------
# -f   : file exists and it is a file
# -d   : directory exists and it is a directory
# -e   : file exists (file or directory)
# -z   : string is null
# -n   : string is not null
# -r   : file has read permission
# -w   : file has write permission
# -x   : file has execute permission
# -------------------------------------



# num=10
# if [ $num -eq 10 ]; then
#     echo "num is 10"
# fi

# num=10
# if [[ $num = 10 ]]; then
#     echo "num is 10"
# fi


# name="abanoub"
# if [ $name = "abanoub" ]; then
#     echo "name is abanoub"
# fi

# read -p "Enter your name: " name
# if [ $name = "abanoub" ]; then
#     echo "name is abanoub"
# else
#     echo "name is not abanoub , who you are ??"    
# fi


# if [ -f "abanoub" ]; then
#     echo "file exists and it is file"
# else
#     echo "file does not exist or is not a file"
# fi


# if [ -d "abanoub" ]; then
#     echo "directory exists and it is directory"
# else
#     echo "directory does not exist or is not a directory"
# fi

# -----------------------------
# if   [  -z "$1" ]; then
#     echo "string is null"
# else
#     echo "string is not null"
#     echo $1
# fi
# -----------------------------
# if   [  -n "$1" ]; then
#     echo "string is not null"
#     echo $1
# else
#     echo "string is null"
#     echo $1
# fi

# -----------------------------
# read -p "Enter your age: " $1
# if [ $1 -lt 18 ]; then 
#     echo "You are a minor."
# elif [ $1 -le 50 ]; then
#     echo "You are an adult."    
# else
#     echo "You are a senior citizen."
# fi


# read -p "Enter your database name: " dbname
# if [[ $dbname =~ ^[A-Za-z][A-Za-z0-9]*$ ]]; then
#     echo "valid database name"
#     echo "Creating database '$dbname'..."
# else
#     echo "invalid database name. It must start with a letter and contain only letters, digits, and underscores."
# fi

# ------------------------
# logical operators
# ------------------------
# -------------------------------
# AND   :  &&
# OR    :  ||
# ------------------

# a=16
# b=20
# if [ $a -lt 15 ] && [ $b -gt 15 ]; then
#     echo "Both conditions are true."
# else
#     echo "At least one condition is false."
# fi


# a=16
# b=14
# if [ $a -lt 15 ] || [ $b -gt 15 ]; then
#     echo "At least one condition is true"
# else
#     echo "two conditions are false."
# fi


# ------------------------
# nested if
# ------------------------
# num=40
# if [ $num -gt 10 ]; then
#     if [ $num -lt 30 ]; then
#         echo "$num is greeter than 10 and less than 30"
#     else
#         echo "$num is greater than  10 and greater than 30"    
#     fi 
# else
#     echo "$num is not greater than 10"       
# fi
# ------------------------------------------
# for var in 1 2 3 4 5;
# do
#     echo "$var" 
# done


# for var in *.sh;
# do
#     echo "$var" 
# done


# for var in /c/Users/*;
# do
#     echo "$var" 
# done


# for i in {1..10};
# do
#     echo "$i" 
# done


# for i in {1..10..3};
# do
#     echo "$i" 
# done

# for (( i=1; i<=10; i++ ));
# do
#     echo "$i"
# done
# ------------------------------------------
# for (( i=10; i>=1; i-- ));
# do
#     echo "$i"
# done

# for (( i=10; i>=1;  ));
# do
#     echo "$i"
#     ((i--))
# done

# for i in {10..1};
# do
#     echo "$i"
# done

# for (( i=1; i<=5; i++ ));      
# do
#     for (( j=1; j<=i; j++ ));       
#     do
#         printf "*" 
#     done
#     echo ""
#     # printf "\n"    

# done


# echo "hello"
# echo ""
# echo ""
# echo "ahmed"

# ------------------

# for (( i=1; i<=5; i++ ));      
# do
#     for (( k=i; k<=5; k++ ));
#     do
#         printf " "
#     done
#     for (( j=1; j<=2*i-1; j=j++ ));       
#     do
#         printf "*" 
#     done
#     printf "\n"    
# done



# -----------------------------------
# while  [ condition ];
# do
#     commands
# done
# -----------------------
# num=1
# while [ $num -le 5 ];
# do
#     echo "$num"
#     ((num++))
# done    

# num=10
# while [ $num -gt 0  ];
# do
#     echo "$num"
#     ((num--))
# done


# -----------------------------------
# select action in "create database" "delete database" "list database" "quit"
# do
#     case $action in 
#         "create database")
#             source create_db.sh
#             ;;
#         "delete database")
#             echo "Deleting database..."
#             ;;
#         "list database")
#             echo "Listing databases..."
#             ;;
#         "quit")
#             echo "Exiting..."
#             break
#             ;;
#         *)
#             echo "Invalid option. Please try again."
#             ;;
#     esac
# done     

# ----------------------

# function_name() {
#     # commands
# }
# function_name


# hello() {
#     echo "Hello, abanoub!"
# }
# hello
# hello
# hello


# hello(){
#     echo "Hello, $1"
# }
# hello "abanoub"
# echo $1


# hello(){
#     echo "Hello, $1"
# }
# hello "$1"



# add() {
#     echo "Sum: $1 + $2 = $(( $1 + $2 ))"
# }
# add 10 20
# add $1 $2



# n=5
# for (( i=1; i<=n; i++ )); do
#     for (( k=i; k<=n; k++ )); do
#         echo -ne " "
#     done

#     for (( j=1; j<=2*i-1; j++ )); do
#         echo -ne "*"
#     done
 
#     echo
# done


# read -p "Enter the name: " USERNAME


# echo "Searching using awk..."
# awk -F: -v user="$USERNAME" '$1 == user {
#     print "Username: " $1
#     print "password: " $2
#     print "UID: " $3
#     print "GID: " $4
#     print "Full Name: " $5
#     print "Home Dir: " $6
#     print "Shell: " $7
# }' /etc/passwd