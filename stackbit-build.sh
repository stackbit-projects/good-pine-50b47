#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fe50b47f1e86d65f97d207d

echo "stackbit-build.sh: finished build"
