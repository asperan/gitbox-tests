#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.2.0-alpha1"

CALCULATED_VERSION="$(gb describe --prerelease --prerelease-pattern "alpha%d")"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

