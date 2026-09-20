#!/usr/bin/env bash
# Restore and equip the KOSMOMORPHIA estate in a fresh remote container.
#
# Copy-only and idempotent. It clones what is absent, leaves what is present, and never
# deletes, overwrites or force-fetches. The Mac canon root is not reachable from a remote
# container; these mirrors are a read side, not canon.
#
# Architecture, per MOUNTABLE_ESTATE/README.md:
#   kosmomorphia-plugin        = the SKILL plane (source of truth for skills)
#   pantheona-cross-engine-dual = the CONTROL plane (journals, prompts, maps, land receipts)
#   grok-music-estate-sandbox   = sandbox, not canon
#
# Skills are wired as SYMLINKS into the user skills directory. Never copies — a copy would
# fork the skill and break THE CLEAR LINE (name one thing once).

set -uo pipefail

KOSMO_ROOT="${KOSMO_ROOT:-/home/user/kosmomorphia-plugin}"
PANTHEONA_ROOT="${PANTHEONA_ROOT:-/home/user/pantheona-cross-engine-dual}"
MUSIC_ROOT="${MUSIC_ROOT:-/home/user/grok-music-estate-sandbox}"
SKILLS_DIR="${SKILLS_DIR:-$HOME/.claude/skills}"
GH="${GH:-https://github.com/laki97079-creator}"

clone_if_absent() {
  local path="$1" url="$2" label="$3"
  if git -C "$path" rev-parse HEAD >/dev/null 2>&1; then
    echo "estate: $label present ($(git -C "$path" rev-parse --short HEAD))"
    return 0
  fi
  if [ -e "$path" ]; then
    echo "estate: $path exists but is not a git checkout — left untouched, nothing deleted." >&2
    return 1
  fi
  echo "estate: cloning $label"
  if git clone --depth 1 "$url" "$path"; then
    echo "estate: $label at $(git -C "$path" rev-parse --short HEAD)"
  else
    echo "estate: $label clone failed — continuing without it." >&2
    return 1
  fi
}

clone_if_absent "$KOSMO_ROOT"     "$GH/kosmomorphia-plugin"         "skill plane"
clone_if_absent "$PANTHEONA_ROOT" "$GH/pantheona-cross-engine-dual" "control plane"
clone_if_absent "$MUSIC_ROOT"     "$GH/grok-music-estate-sandbox"   "music sandbox"

# ---- equip: link every skill into the skills directory, canon-pointing, never copied ----

FIRM="$PANTHEONA_ROOT/MATRY_SKILLS_DEPLOY_20260722_212117/FIRM_HIGH_LAW_CODE"
linked=0 kept=0

link_skill() {
  local src="$1" name
  name=$(basename "$src")
  [ -f "$src/SKILL.md" ] || return 0
  if [ -e "$SKILLS_DIR/$name" ]; then kept=$((kept+1)); return 0; fi
  ln -s "$src" "$SKILLS_DIR/$name" && linked=$((linked+1))
}

if [ -d "$KOSMO_ROOT/skills" ]; then
  mkdir -p "$SKILLS_DIR"
  for d in "$KOSMO_ROOT"/skills/*/; do link_skill "${d%/}"; done
  # ka-pan-extract-daughter exists ONLY in the control plane's FIRM_HIGH_LAW_CODE set,
  # never ported into the skill plane. Linked from there until that gap is closed.
  [ -d "$FIRM/ka-pan-extract-daughter" ] && link_skill "$FIRM/ka-pan-extract-daughter"
  echo "estate: skills linked=$linked kept=$kept in $SKILLS_DIR"
else
  echo "estate: no skills directory at $KOSMO_ROOT/skills — skills not equipped." >&2
fi
