#!/bin/bash

function main {
  for i in {1..100}; do
    if [[ ${i}%15 -eq 0 ]]; then
      echo "fizz buzz"
    elif [[ ${i}%5 -eq 0 ]]; then
      echo "buzz"
    elif [[ ${i}%3 -eq 0 ]]; then
      echo "fizz"
    else
      echo "${i}"
    fi
  done
}

function main2 {
  for i in {1..100}; do
    local answer=""
    [[ ${i}%3 -eq 0 ]] && answer="fizz"
    [[ ${i}%5 -eq 0 ]] && answer="${answer}buzz"
    [[ -z ${answer} ]] && answer="${i}"
    echo "${answer}"
  done
}

main2 "$@"
