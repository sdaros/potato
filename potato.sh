#!/bin/bash

WORK=25
PAUSE=5

show_help() {
  cat <<-END
    usage: potato [-w m] [-b m] [-h]
    -w m: let work periods last m minutes (default is 25)
    -b m: let break periods last m minutes (default is 5)
    -h: print this message
END
}

while getopts :w:b:m opt; do
  case "$opt" in
    w)
      WORK=$OPTARG
      ;;
    b)
      PAUSE=$OPTARG
      ;;
    h|\?)
      show_help
      exit 1
      ;;
  esac
done

puts() {
  notify_summary="$1"
  notify_body="$2"
  notify-send -t 0 -u normal "$1" "$2"
}

while true
do
  puts "Pomodoro" "Get Started"
  sleep "$WORK"m

  puts "Pomodoro" "Take a break"
  sleep "$PAUSE"m
done
