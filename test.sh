#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.1.1-dev1"

CALCULATED_VERSION="$(gb describe --prerelease)"

test "${EXPECTED_VERSION}" == "${CALCULATED_VERSION}"

