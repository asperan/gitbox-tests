#!/bin/bash

set -euo pipefail
set -x

trap "rm -f /tmp/gb-changelog" EXIT

gb changelog --exclude-trigger "type IN [ chore, docs, style ]" > /tmp/gb-changelog

diff ./expected-changelog /tmp/gb-changelog

