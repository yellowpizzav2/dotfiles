#!/usr/bin/env bash

set -euo pipefail

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="/etc/keyd"
TARGET_FILE="${TARGET_DIR}/default.conf"
SOURCE_FILE="${BASEDIR}/keyd/default.conf"

mkdir -p "${TARGET_DIR}"
ln -snf "${SOURCE_FILE}" "${TARGET_FILE}"

if command -v keyd >/dev/null 2>&1; then
  keyd reload
fi
