# ESTATE MOUNT — TEST MATRIX AND MCP REPAIR
`2026-09-20 EEST · PAN · session_01DkLSJ7t1oQUVFs8E7XkZ9T · ΦΩΣ`

Append-only. Companion to `TECHNICAL_ESTATE_MOUNT__PAN__TEKHNA__006KB.md`, which is
unchanged and still stands. Nothing deleted. Nothing overwritten.

## THE ROOT CAUSE OF THE DEAD MCP

`ka-sherlock` failed at session start with `CONNECTION_CLOSED`. It was not broken code.

The previous session cloned the estate mirror to `/home/user/kosmomorphia-plugin` and
wrote that absolute path into `.mcp.json` and `.claude/settings.json`. A remote container
is reclaimed between sessions, so at this session's start the path did not exist:

- `.mcp.json` launched `npx -y tsx /home/user/kosmomorphia-plugin/.../server.ts` — no file.
- `.claude/settings.json` sourced the plugin marketplace from the same missing directory,
  so the 108 `ka-*` skills did not mount either.

One cause, both failures. The config was written against a disk that no longer exists.

## THE REPAIR

| change | what it does |
|---|---|
| `ESTATE_MOUNT/mcp/ka-sherlock-ts/server.mjs` | the server bundled into one dependency-free file, committed to this repo, launched by plain `node` — it starts before any clone has happened |
| `.mcp.json` | `${CLAUDE_PROJECT_DIR}` instead of a container path, and `KOSMO_ROOT` carries a default so a missing mirror degrades instead of killing the server |
| `ESTATE_MOUNT/bootstrap_estate.sh` | restores the mirror into a fresh container; copy-only, idempotent, refuses to touch an occupied path |
| `ESTATE_MOUNT/mcp/ka-sherlock-ts/PROVENANCE.md` | source commit and both SHA-256 values, so the artifact is never mistaken for canon and can be rebuilt |

The bundle is a build artifact from a pinned commit, not a second copy of the skill —
CLEAR LINE holds. The 108 skills are NOT copied into this repo for the same reason: one
name, one source, cloned from it.

### ka-sherlock verification, rerun this session [VERIFIED]
`npm install` clean · `tsc --noEmit` clean · smoke test 12/12 PASS, identical to the
previous session including the eviction law (sparse stubs flagged EVICTED, never hashed)
and PROTO-0005 (same name and size with different SHA-256 returns VERSION, not duplicate).

Bundle probed with a live JSON-RPC handshake on plain `node`, no `node_modules` present:
`initialize` answered `ka-sherlock 0.2.0`, `tools/list` returned all three tools.

### bootstrap script, four branches tested [VERIFIED]
mirror already present → no-op · absent → clones · occupied non-git path → refuses and
leaves every file standing · unreachable repo → warns and exits 0, never blocking startup.

## CONNECTOR TEST MATRIX — each called live, one by one

| connector | probe | result |
|---|---|---|
| Atlassian Rovo | `atlassianUserInfo` | **PASS** — account active |
| Bigdata.com | `bigdata_help` | **PASS** — 16 content packages, PAYG balance 5000 |
| Miro | `user_who_am_i` | **PASS** — user, team and org ids returned |
| Notion | `get-users self` | **PASS** — workspace person resolved |
| GitHub | `get_me` | **PASS** — 39 repos |
| Nimble | `nimble_search` | **PASS** — 3 results |
| Nimble | `nimble_extract` driver `vx10` | **PASS** — full Greek cadastre page, see below |
| Mermaid Chart | `validate_and_render` | **PASS** — diagram valid and rendered; payload exceeds the tool's own return cap, so it lands in a file rather than in view |
| brightdata | `search_engine` (Greek, geo `gr`) | **PASS** — 9 organic results |
| brightdata | `scrape_as_markdown` example.com | **PASS** |
| brightdata | `scrape_as_markdown` ktimatologio.gr | **DEFECT** — empty body, no error |
| brightdata | `scrape_batch` ×2 Greek URLs | **DEFECT** — 60s timeout |
| brightdata | `ask_brightdata_assistant` | **DEFECT** — 30s timeout twice, then the server demanded re-authentication |
| ka-sherlock MCP | session start | **WAS FAILING** — repaired above, live from next session |

### Connected but switched off in this chat — no probe possible
`Legal Data Hunter` · `Google Drive` · `Linear` · `Slack`. Each is authenticated at
account level with `enabledInChat: false`. Only you can turn them on, in this chat's
connector settings.

**Legal Data Hunter is the one that matters.** 23M+ legal documents across 160+
jurisdictions, switched off while 012B and 012 LOUTRA are live. Turn it on first.

### Not connected
`Airtable` and `In Practise` — install incomplete. `Box` — disconnected.

## BRIGHTDATA — WHAT IS ACTUALLY WRONG, AND THE ROUTE AROUND IT

brightdata is authenticated and its search lane is healthy. The failure is narrower and
more dangerous than an outage: **`scrape_as_markdown` returns an empty body with no
error** on bot-mitigated sites. It does not say blocked. It says nothing. A pipeline that
trusts it records an empty page as a read page.

Proven this session on the same URL, back to back:

- brightdata `scrape_as_markdown` → empty
- Nimble `nimble_extract`, driver `vx10`, country `GR`, locale `el` → the complete press
  release, Greek intact, including the 03-08-2026 correction deadline and the
  Γραφείο Κτηματογράφησης contact block

### A second brightdata fault, later in the same session [VERIFIED]

After the passes above, brightdata stopped answering at all: `MCP server "brightdata"
needs you to sign in again`. Its session credential expired mid-work. This session is
non-interactive, so I cannot re-run the sign-in — **you re-authorize brightdata in your
claude.ai connector settings.**

The expiry does not explain the empty body. `example.com` scraped clean *after* the
ktimatologio call returned empty, so brightdata was still authenticated when it reported
nothing for the Greek page. Two separate faults: a silent empty on bot-mitigated sites,
and a credential that lapses under a working session.

### Routing rule, until brightdata's unlocker is fixed
1. **SERP → brightdata `search_engine`**, `geo_location: "gr"` for Greek work. Strong,
   fast, returns Greek titles and descriptions cleanly.
2. **Page body → Nimble `nimble_extract`**, escalate the driver: `vx8` for JavaScript
   pages, `vx10` for bot-mitigated ones such as `ktimatologio.gr`. Set `country: "GR"`
   and `locale: "el"` for Greek sources.
3. **Never treat an empty brightdata body as an empty page.** Empty means unread. Re-run
   through Nimble and compare. This is the eviction law in another costume: absence of
   content in a reader is not absence of content at the source.
4. `scrape_batch` and `ask_brightdata_assistant` both exceed their timeouts here. Use
   single scrapes; do not build on the batch or the assistant.

## PLUGIN — 108 ka-* SKILLS

Mirror restored at commit `8d2895b`. Every one of the 108 skill folders audited
programmatically: `SKILL.md` present, YAML frontmatter opens, `name:` and `description:`
both present. **108 total, 0 defects.**

## ONE ITEM BLOCKED — NEEDS YOUR WORD

The `SessionStart` hook that runs `bootstrap_estate.sh` could not be written. The session
permission classifier refuses to let me add a hook to `.claude/settings.json`, because a
hook is arbitrary command execution at every session start. That is your decision, not
mine to take.

Without the hook nothing breaks — `ka-sherlock` starts regardless, because the bundle is
committed and `KOSMO_ROOT` carries a default. Only the 108-skill mirror needs restoring
by hand in a new container, which is one command:

```sh
bash ESTATE_MOUNT/bootstrap_estate.sh
```

To make it automatic, paste this into `.claude/settings.json` beside the existing keys:

```json
"hooks": {
  "SessionStart": [
    { "hooks": [ {
        "type": "command",
        "command": "bash \"$CLAUDE_PROJECT_DIR/ESTATE_MOUNT/bootstrap_estate.sh\" || true",
        "timeout": 600,
        "statusMessage": "Restoring KOSMOMORPHIA estate mirror"
    } ] }
  ]
}
```

## STILL BLOCKED FROM A REMOTE CONTAINER — unchanged, restated

`obsidian` MCP needs a vault path on the Mac. The session-guard `Stop` hook needs
`ENGINE/ka_session_guard.py`, which is Mac-only and in no repo. The ENGINE runtime and
the 12 TEKHNA files are Mac-only. The Mac canon root
`/Users/n/Desktop/MOTHER THEOSPORA/` is not reachable from here — verified, `/Users` does
not exist in this container. Nothing in this receipt touched canon.

## LAWS OBSERVED

NEVER DELETE · NEVER OVERWRITE · copy-only with SHA-256 recorded · the occupied-path
guard refuses rather than clears · no truncated listing reported as a full count · every
connector claim backed by a live call, not by a config file · empty reader output never
reported as empty source · ENGINE SUGGESTS, MOTHER DECIDES.

ΦΩΣ
