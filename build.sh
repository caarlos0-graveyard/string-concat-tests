#!/bin/bash
#
# Script used to generate the data in the tests.
#

set -e

# iterating all test* folders
for test in $(ls -d test*); do
  echo "Building ${test}..."
  cd "${test}"

  # removing old results
  rm -rf *.class *.bytecode *.diff times.txt

  for clazz in $(ls *.java); do
    # compile
    javac "${clazz}"
    # extract filename
    clazz="${clazz%.*}"
    # decompile
    javap -c ${clazz} > ${clazz}.bytecode
    # exec and log the time
    echo "${clazz}" >> times.txt
    (time java ${clazz}) > /dev/null 2>> times.txt
    echo -e "\n\n" >> times.txt
  done
  cd ..
done
