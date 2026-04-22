#!/usr/bin/env bash
set -euo pipefail

# Determine repository root regardless of where the script is called from
REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || {
  echo "Error: push.sh must be run inside a Git repository." >&2
  exit 1
}

cd "${REPO_ROOT}"

REPO_NAME="$(basename "${REPO_ROOT}")"
DATE_STAMP="$(date +%Y%m%d)"
COMMIT_MESSAGE="${REPO_NAME}-${DATE_STAMP}"

git add -A

if git diff --cached --quiet; then
  echo "No changes to commit." >&2
  exit 0
fi

git commit -m "${COMMIT_MESSAGE}"

CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

if git remote get-url origin >/dev/null 2>&1; then
  git push origin "${CURRENT_BRANCH}"
else
  echo "No remote named 'origin' configured; skipping push." >&2
fi
