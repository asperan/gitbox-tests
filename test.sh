#!/bin/bash

set -euo pipefail
IFS=$'\n\t'
set -vx

mkdir -p /tmp/repository
cd /tmp/repository

gb init

[ "$(git log --oneline | awk 'END {print NR}')" -eq "1" ]

