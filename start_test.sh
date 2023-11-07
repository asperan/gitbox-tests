#!/bin/bash

source ./utils.sh

# Retrive all available branches (both local and remote) except main;
# remove remote references (local and remote branches have now the same name) and decorations;
# sort them and remove duplicate items.
TEST_BRANCHES="$(git branch -a | grep --invert-match 'main' | sed 's/remotes\/origin\///' | tr -d ' *' | sort --unique)"

# Cumulative exit status of all tests
TESTS_OK=0

for branch in $TEST_BRANCHES ; do
    step "$branch"
    try git checkout "${branch}" &>/dev/null
    try ./test.sh

    if ! next ; then
        TESTS_OK=1
    fi
done

exit $TESTS_OK

