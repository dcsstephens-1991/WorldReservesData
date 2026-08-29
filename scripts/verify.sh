#!/usr/bin/env bash
# Generates/verifies a SHA-256 manifest for the whole repository (minus .git and scripts' own output).
# Usage:
#   ./verify.sh generate   -> writes docs/MANIFEST.sha256
#   ./verify.sh check      -> checks current tree against docs/MANIFEST.sha256

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MANIFEST="$ROOT/docs/MANIFEST.sha256"
cmd="${1:-generate}"

cd "$ROOT"

case "$cmd" in
  generate)
    find . -type f -not -path './.git/*' -not -name 'MANIFEST.sha256' -print0 \
      | sort -z \
      | xargs -0 sha256sum > "$MANIFEST"
    echo "Wrote $MANIFEST"
    ;;
  check)
    sha256sum -c "$MANIFEST"
    ;;
  *)
    echo "Usage: $0 {generate|check}" >&2
    exit 1
    ;;
esac
