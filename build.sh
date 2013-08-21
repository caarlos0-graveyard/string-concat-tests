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

  for clazz in Test Test2 Test3; do
    # compile
    javac "${clazz}.java"
    # decompile
    javap -c ${clazz} > ${clazz}.bytecode
    # exec and log the time
    (time java ${clazz}) > /dev/null 2>> times.txt
  done

  # diff the bytecodes
  diff Test.bytecode Test2.bytecode > bytecode.diff &

  cd ..
done
