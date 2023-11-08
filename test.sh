#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.1.1"

CALCULATED_VERSION="$(gb describe --patch-trigger "scope IN [ core-deps ] ")"

test "${EXPECTED_VERSION}" == "${CALCULATED_VERSION}"

