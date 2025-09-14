#Basic If Statement

# if [ 1 -eq 1 ]; then
#   echo "They are equal"
# fi
#------------
#If-Else
# if [ 2 -gt 3 ]; then
#   echo "2 is greater"
# else
#   echo "3 is greater"
# fi
#------------
#If-Elif-Else
# value=20
# if [ $value -lt 10 ]; then
#   echo "Less than 10"
# elif [ $value -lt 30 ]; then
#   echo "Between 10 and 30"
# else
#   echo "30 or more"
# fi
#-----------------
#String Comparison
# str1="hello"
# str2="world"

# if [ "$str1" = "$str2" ]; then
#   echo "Strings are equal"
# else
#   echo "Strings are not equal"
# fi
#-------------
#Integer Comparisons
# a=10
# b=20

# if [ $a -lt $b ]; then
#   echo "$a is less than $b"
# fi


#Operators:

#-eq: equal
#-ne: not equal
#-lt: less than
#-le: less than or equal
#-gt: greater than
#-ge: greater or equal
#--------------------
#Check File Exists
# if [ -f "file.txt" ]; then
#   echo "File exists"
# fi
#----------------
#Check Directory Exists
# if [ -d "/etc" ]; then
#   echo "Directory exists"
# fi
#-----------
#Check File is Readable
# if [ -r "file.txt" ]; then
#   echo "File is readable"
# fi

#-w: writable
#-x: executable
#-s: not empty
#-e: exists
#---------------
#Pattern Matching with [[
# name="admin_user"
# if [[ $name == admin* ]]; then
#   echo "User is admin"
# fi
#-----------------


