#!/bin/bash

APP_NAME=${APP_NAME:-"hello"}

goal_hello(){
  echo "hello from the other side"
}
if type "goal_$1" &>/dev/null; then
  "goal_$1" "${@:-2}"
else
  echo "usage: $0 <goal>
    goal:
        hello                     -- says hello to the world
        "
  exit 1
fi
