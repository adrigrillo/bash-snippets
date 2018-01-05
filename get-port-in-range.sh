#!/usr/bin/env bash
#
# Check if port is available

get_available_port() {
  max_port=${2}
  for (( port=${1} ; port <= max_port; port++ )); do
    netstat -tulan | grep ${port} >> /dev/null
    if [[ ${?} -gt 0 ]]; then
      export PORT=${port}
      echo "Using port ${PORT}"
      break
    fi
  done
}

get_available_port ${1} ${2}