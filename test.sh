#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="$(git describe)"

CALCULATED_VERSION="$(gb describe --prerelease --prerelease-pattern "alpha%d")"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

