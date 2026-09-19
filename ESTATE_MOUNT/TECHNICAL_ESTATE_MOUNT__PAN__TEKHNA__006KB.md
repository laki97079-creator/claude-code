# TECHNICAL ESTATE — MOUNT RECEIPT
`2026-09-19 EEST · PAN · session_01Nw8tEgXyDBNLqwAUf8TVpW · ΦΩΣ`

Append-only receipt of what was mounted into a Claude Code remote session, what was
verified, and what could not be. Nothing was deleted. Nothing was overwritten.

## REPOS ATTACHED AND CLONED

| repo | files | size | head | role |
|---|---|---|---|---|
| `laki97079-creator/kosmomorphia-plugin` | 332 | 4.5 MB | `fdf9482f` | canon plugin — 108 skills, ka-sherlock MCP, hooks, psdktr-engine |
| `laki97079-creator/pantheona-cross-engine-dual` | 9,320 | 213 MB | `8ad1ed47` | land receipts — LANDS_TRIPLE, MATRY, ULTRACODE, Termigrok |
| `laki97079-creator/grok-music-estate-sandbox` | 52 | 300 KB | `728e7dcf` | MUSIC_ESTATE_v1 mirror + 5 Grok slash skills. Sandbox, not canon |

`laki97079-creator/claude-code` (this repo) is an Anthropic docs fork and carries no
estate content — 0 hits for tekhn / kosmo / matry / theospora.

## MOUNTED

- **Plugin** — `kosmomorphia@kosmomorphia-estate` enabled via `.claude/settings.json`,
  marketplace sourced from the local clone. Exposes 108 `ka-*` skills.
- **MCP** — `ka-sherlock` wired in `.mcp.json`, TypeScript server, `KOSMO_ROOT` pointed
  at the cloned mirror since the Mac canon root is not reachable from a remote container.
- **Env** — `KOSMO_ROOT=/home/user/kosmomorphia-plugin`.

### ka-sherlock verification [VERIFIED]
`npm install` clean · `tsc --noEmit` clean · smoke test 12/12 PASS:

```
PASS three tools registered
PASS manifest walked 5 of 5 files (W-11 full walk)
PASS sparse stub flagged EVICTED
PASS scope INCOMPLETE while evicted present (W-13)
PASS stub sha256 is null (never hashed)
PASS symlink is SYMLINK with target, not EVICTED
PASS PRESENT found for identical file
PASS VERSION for same-name/size different-SHA (PROTO-0005)
PASS MISSING for source-only file
PASS EVICTED_SOURCE not counted missing
PASS folder without README/ledger -> NEEDS_FULL_READ
PASS README + manifest + ledger -> MERGED
```

The eviction law and PROTO-0005 are compiled into the server, not merely documented.

## NOT MOUNTED, AND WHY

| component | status | reason |
|---|---|---|
| `brightdata` MCP from `.mcp.json` | not remounted | already live at account level in this session |
| `nimble` MCP from `.mcp.json` | not remounted | already live at account level |
| `obsidian` MCP | **[BLOCKED]** | needs `OBSIDIAN_VAULT_PATH` on the Mac; the vault is not reachable from a remote container |
| session-guard `Stop` hook | **[INERT]** | needs `ENGINE/ka_session_guard.py`, which lives on the Mac and is not in git. The hook is written `|| true`, so it no-ops rather than failing |
| ENGINE runtime | **[ABSENT]** | `KOSMO_ROOT/ENGINE/` is Mac-only. The 12 TEKHNA files are not in any repo |

## TEKHNAKHON — CORRECTION OF RECORD

An earlier turn in this session asserted that TEKHNAKHON did not exist. **That was wrong.**
The search was run against `kosmomorphia-plugin/skills/` only, and a `head -20` truncation
was reported as a full result.

`ka-tekhna-khon` exists: an 8,819-byte SKILL.md at
`pantheona-cross-engine-dual/MATRY_SKILLS_DEPLOY_20260722_212117/FIRM_HIGH_LAW_CODE/ka-tekhna-khon/`,
installed live on the Mac at `/Users/n/.agents/skills/ka-tekhna-khon`, with a persona at
`PERSONAS_SUPERGROK_HEAVY/09_TEKHNA__ka-tekhna-khon.md`. 140 files across the estate carry
the name. Her own SKILL.md records that Mother corrected narrow-framing drift twice
(2026-07-08, 2026-07-11/12). This was the third drift and the worst kind.

## DEFECTS FOUND

1. **Dangling router dispatch** — `ka-skill-router` dispatches to `tekhna-khon`. Nineteen of
   the twenty roster names resolve under `skills/`; `tekhna-khon` did not. Ported this
   session, commit `d4dade9` on `claude/tekhna-khon-port-and-estate-audit`.
2. **Forked SKILL file** — `SKILL.md` (8,819 B) and `SKILL 2.md` (4,614 B), different
   SHA-256. A VERSION, not a duplicate. The short one is preserved as
   `SKILL__SUPERSEDED_20260722_short-variant.md`. Neither deleted.
3. **Missing skill scripts** — the ported SKILL.md names seven scripts and three references;
   no `scripts/` or `references/` directory exists beside it. Whether they exist at the Mac
   install path is **[UNVERIFIED]** from here.
4. **Four-way name fork** — TEKHNAKHON (129 files), tekhna-khon (140), TEKHNAKON (3),
   TEKHNEKON (1). The TEKHNEKON spelling carries its own parallel artifacts on the Desktop
   box listing — `TEKHNEKON_ARTEFACT_INDEX.csv`, `TEKHNEKON_COMMAND_DASHBOARD.html`,
   `tekhnekon_dashboard_build.py` — each beside a TEKHNAKHON twin. CLEAR LINE violation.
5. **Account skill gaps** — 8 of the canonical 9 installed; `ka-paper-lab-row` missing.
   `ka-meeus-astro` present twice under two distinct skill IDs.

## LAWS OBSERVED

NEVER DELETE · NEVER OVERWRITE · copy-only with SHA-256 verify · evicted stubs never
reported as missing · no truncated listing reported as a full count · every unverified
claim marked `[UNVERIFIED]` · ENGINE SUGGESTS, MOTHER DECIDES.

ΦΩΣ
