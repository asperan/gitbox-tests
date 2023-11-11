#!/bin/bash

set -euo pipefail
set -x

EXPECTED_VERSION="$(if [ "$(git describe | tr -cd '-' | wc -c)" -eq "1" ] ; then git describe | cut -d '-' -f 1 ; else echo "INVALID_VERSION" ; fi )"

CALCULATED_VERSION="$(gb describe)"

test "${CALCULATED_VERSION}" == "${EXPECTED_VERSION}"

