#!/bin/bash

ping_site() {
  if [ -n "$1" ];  then
    ping -c 3 "$1" 
    echo "$1 is reachable."
  else
    echo "$1 is not reachable."
  fi
}

ping_site "www.facebook.com"