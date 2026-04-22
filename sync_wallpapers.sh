#!/usr/bin/env bash
set -euo pipefail

# Determine repository root and wallpaper source directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/wallpapers"
TARGET_DIR="${HOME}/.config/wallpaper"
TARGET_PARENT="$(dirname "${TARGET_DIR}")"

if [ ! -d "${SOURCE_DIR}" ]; then
  echo "Wallpaper source directory not found: ${SOURCE_DIR}" >&2
  exit 1
fi

# Ensure the parent directory for the target exists
mkdir -p "${TARGET_PARENT}"

if [ -L "${TARGET_DIR}" ]; then
  CURRENT_LINK="$(readlink "${TARGET_DIR}")"
  if [ "${CURRENT_LINK}" = "${SOURCE_DIR}" ]; then
    echo "Wallpaper symlink already up to date at ${TARGET_DIR}"
    exit 0
  fi
  echo "A different symlink already exists at ${TARGET_DIR} (points to ${CURRENT_LINK}). Remove it and rerun this script." >&2
  exit 1
elif [ -e "${TARGET_DIR}" ]; then
  echo "Target path ${TARGET_DIR} exists and is not a symlink. Please remove or rename it before running this script." >&2
  exit 1
fi

ln -s "${SOURCE_DIR}" "${TARGET_DIR}"
echo "Wallpapers symlinked to ${TARGET_DIR}"
