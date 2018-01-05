#!/usr/bin/env bash
#
# Check if the java installation is valid, in this case only java 8
check_java_version() {
  JAVA_VER=`${1}/bin/java -version 2>&1 | grep -i version | sed 's/.*version ".*\.\(.*\)\..*"/\1/; 1q'`
  if [[ -z ${JAVA_VER} ]]; then
    echo "Not valid java path"
    exit 1
  elif [[ ${JAVA_VER} -lt 8 ]]; then
    echo "Invalid java version, please provide a valid path to a java 8 installation"
    exit 1
  fi
}

JAVA_HOME=pathToJava
check_java_version ${JAVA_HOME}