#!/bin/bash

# Note that we don't enable the 'e' option, which would cause the script to
# immediately exit if 'run_tests' failed
set -uox pipefail

echo "$PATH"
PATH_CHECK_STATUS=$?

sh ./run_tests.sh
TESTS_EXIT_STATUS=$?

sh ./clean_up.sh

env | grep -i -E 'git|node'

echo $TESTS_EXIT_STATUS
echo $PATH_CHECK_STATUS

exit $TESTS_EXIT_STATUS
