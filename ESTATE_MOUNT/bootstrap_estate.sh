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
# Skills are COPIED into the user skills directory as full bodies, SHA-256 verified against
# the skill plane. No symlinks, no pointers (Mother hard rule, 2026-10-02). This supersedes
# the earlier design that wired symlinks to keep one copy; drift is now caught by hash, not
# prevented by a link: an existing copy that differs is reported and never overwritten.

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

# ---- equip: copy every skill into the skills directory as a full body, never linked ----

FIRM="$PANTHEONA_ROOT/MATRY_SKILLS_DEPLOY_20260722_212117/FIRM_HIGH_LAW_CODE"
copied=0 kept=0 drifted=0 unlinked=0 failed=0

# Hashes the dereferenced tree (find -L), the same view cp -RL copies, so a source that contains
# a link verifies against its materialized copy.
tree_sha() {
  (cd "$1" && find -L . -type f -print0 | LC_ALL=C sort -z | xargs -0 -r sha256sum) | sha256sum | cut -d' ' -f1
}

copy_skill() {
  local src="$1" name dst
  name=$(basename "$src")
  [ -f "$src/SKILL.md" ] || return 0
  dst="$SKILLS_DIR/$name"
  if [ -L "$dst" ]; then
    # A symlink is a pointer, not content: replace it with the body it pointed at.
    rm -f "$dst" && unlinked=$((unlinked+1))
  fi
  if [ -e "$dst" ]; then
    if [ "$(tree_sha "$src")" = "$(tree_sha "$dst")" ]; then
      kept=$((kept+1))
    else
      drifted=$((drifted+1))
      echo "estate: $name in $SKILLS_DIR differs from $src — kept as is, not overwritten." >&2
    fi
    return 0
  fi
  # Stage outside the skills directory and move into place only after the SHA-256 check, so a
  # failed or partial copy never occupies the destination (it would read as drift on every rerun).
  # -L dereferences any link inside the source so no symlink is ever copied in.
  local stage
  # The stage sits inside $SKILLS_DIR (hidden, two levels above any SKILL.md the loader reads), so it
  # is on the destination's filesystem and the final mv is an atomic rename(2). A stage under /tmp is
  # often another filesystem, where mv degrades to copy-then-delete and an interruption can leave a
  # partial directory at $dst that every later run reports as drift (Bugbot, PR #4).
  stage=$(mktemp -d "$SKILLS_DIR/.estate-stage.XXXXXX") || { failed=$((failed+1)); return 0; }
  if cp -RL "$src" "$stage/$name" \
     && [ "$(tree_sha "$src")" = "$(tree_sha "$stage/$name")" ] \
     && mv "$stage/$name" "$dst"; then
    copied=$((copied+1))
  else
    failed=$((failed+1))
    echo "estate: $name copy did not verify by SHA-256 — not installed; the next run retries." >&2
  fi
  rm -rf "$stage"
}

if [ -d "$KOSMO_ROOT/skills" ]; then
  mkdir -p "$SKILLS_DIR"
  for d in "$KOSMO_ROOT"/skills/*/; do copy_skill "${d%/}"; done
  # ka-pan-extract-daughter exists ONLY in the control plane's FIRM_HIGH_LAW_CODE set,
  # never ported into the skill plane. Copied from there until that gap is closed.
  [ -d "$FIRM/ka-pan-extract-daughter" ] && copy_skill "$FIRM/ka-pan-extract-daughter"
  echo "estate: skills copied=$copied kept=$kept drifted=$drifted symlinks_replaced=$unlinked failed=$failed in $SKILLS_DIR"
  links_left=$(find "$SKILLS_DIR" -type l | wc -l)
  [ "$links_left" -eq 0 ] || echo "estate: $links_left symlink(s) remain under $SKILLS_DIR — not allowed." >&2
else
  echo "estate: no skills directory at $KOSMO_ROOT/skills — skills not equipped." >&2
fi
