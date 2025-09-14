#!/bin/bash

count_files() {
  file=$1
  count=$(cat  "$file" | wc -l)
  echo "Files in $file: $count"
}

count_files "/home/abanoub/Desktop/password"

