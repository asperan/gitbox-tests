#!/bin/bash

set -euo pipefail
set -x

trap "git reset --hard HEAD~1 > /dev/null" EXIT

EXPECTED_COMMIT_MESSAGE="feat(scope)!: add a new text file"

touch new_file.txt

git add new_file.txt

gb commit -t 'feat' -S 'scope' -s 'add a new text file' -m '' --breaking -q

LAST_COMMIT_MESSAGE="$(git log --format=%s -n 1)"

test "${LAST_COMMIT_MESSAGE}" == "${EXPECTED_COMMIT_MESSAGE}"

