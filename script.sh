#!/bin/bash

# Note that we don't enable the 'e' option, which would cause the script to
# immediately exit if 'run_tests' failed
set -uox pipefail

echo "Hello from tests step."
PATH_CHECK_STATUS=$?

sh ./tests/run_tests.sh
TESTS_EXIT_STATUS=$?

echo $TESTS_EXIT_STATUS
exit $TESTS_EXIT_STATUS
