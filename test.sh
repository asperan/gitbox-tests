#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.1.1-beta1"

CALCULATED_VERSION="$(gb describe --prerelease --prerelease-pattern "beta%d" --old-prerelease-pattern "alpha%d")"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

