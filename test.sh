#!/bin/bash

set -euo pipefail
IFS=$'\n\t'
set -x

trap "rm -rf /tmp/repository" EXIT

mkdir -p /tmp/repository
cd /tmp/repository

gb init

[ "$(git log --oneline | awk 'END {print NR}')" -eq "1" ]

