#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="1.0.0"

CALCULATED_VERSION="$(gb describe --major-trigger "type IN [ refactor ] AND scope IN [ api ]")"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

