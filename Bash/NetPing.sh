#!/bin/bash
# include this boilerplate
function jumpto
{
label=$1
cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
eval "$cmd"
exit
}

start=${1:-"start"}

jumpto $start

start:

if ping -c 1 192.168.1.1
then
  sleep 5m
  jumpto $start
else
  sudo halt
fi
