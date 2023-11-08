#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.1.1-rc1"

CALCULATED_VERSION="$(gb describe --prerelease --prerelease-pattern "rc%d")"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

