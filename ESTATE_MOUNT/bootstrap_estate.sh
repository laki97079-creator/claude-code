#!/usr/bin/env bash
# Restore the KOSMOMORPHIA estate mirror into a fresh remote container.
#
# Copy-only and idempotent. It clones when the path is absent and does nothing when it
# is present. It never deletes, never overwrites, never force-fetches. The Mac canon
# root is not reachable from a remote container; this mirror is a read side, not canon.

set -uo pipefail

KOSMO_ROOT="${KOSMO_ROOT:-/home/user/kosmomorphia-plugin}"
ESTATE_REPO="${ESTATE_REPO:-https://github.com/laki97079-creator/kosmomorphia-plugin}"

if git -C "$KOSMO_ROOT" rev-parse HEAD >/dev/null 2>&1; then
  echo "estate: mirror already present at $KOSMO_ROOT ($(git -C "$KOSMO_ROOT" rev-parse --short HEAD))"
  exit 0
fi

if [ -e "$KOSMO_ROOT" ]; then
  echo "estate: $KOSMO_ROOT exists but is not a git checkout — leaving it untouched." >&2
  echo "estate: nothing deleted. Resolve by hand before the mirror can mount." >&2
  exit 0
fi

echo "estate: cloning mirror into $KOSMO_ROOT"
git clone --depth 1 "$ESTATE_REPO" "$KOSMO_ROOT" || {
  echo "estate: clone failed — ka-sherlock still starts, the 108 ka-* skills will not mount." >&2
  exit 0
}
echo "estate: mirror at $(git -C "$KOSMO_ROOT" rev-parse --short HEAD)"
