#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="0.2.0"

CALCULATED_VERSION="$(gb describe)"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

