#!/bin/bash

set -euo pipefail
set -x

DEFAULT_FIRST_VERSION="0.1.0"

DESCRIBED_VERSION="$(gb describe)"

test "${DESCRIBED_VERSION}" == "${DEFAULT_FIRST_VERSION}"

