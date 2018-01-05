#!/usr/bin/env bash
#
# Check the environment of the machine if its name contain any clue
get_env_name() {
  if [[ ${1} =~ ^[A-za-z1-9]+dev[A-za-z1-9]*$ ]]; then
    export ENVIRONMENT="dev"
  elif [[ ${1} =~ ^[A-za-z1-9]+pre[A-za-z1-9]*$ ]]; then
    export ENVIRONMENT="pre"
  elif [[ ${1} =~ ^[A-za-z1-9]+pro[A-za-z1-9]*$ ]]; then
    export ENVIRONMENT="pro"
  else
    echo "No environment could be retrieved"
  fi
}

get_env_name ${HOSTNAME}