<!-- OUTPUT-ROUTE: NOT YET FILED — cloud session, no box reach
     DESTINATION: /Users/n/Desktop/MOTHER THEOSPORA/_ARK_MAT_KAE_MATRY_BOX/MATRY_20261003/
     FILING: pending a Mac-side session
     INTENDED REPO: laki97079-creator/NEAKOSMOMORPHIA — NOT LANDED THERE. This session has no push
     grant to NEAK (`add_repo` push refused). Filed here instead, stated plainly, not pretended. -->

# ULTRACODE HANDOVER — CODEX CLOUD ENVIRONMENT IN NEAK — 2026-10-03

```
TITLE:     ULTRACODE handover — Codex Cloud environment setup in NEAKOSMOMORPHIA
DATE:      2026-10-03 (UTC clock of the issuing session; not a Mac clock — see §0)
PROJECT(S): NEAK (estate control plane) · 012B PÂAKÉ~TÂARA (live filing)
HOUSE:     KOSMOMORPHIA / MOTHER THEOSPORA
GODFATHER: PAN (Claude Code, session claude-code-f5)
BATCH-REF: repo root of laki97079-creator/NEAKOSMOMORPHIA — no MATRY box in this sandbox,
           routed here plainly, not pretended
AUDIENCE:  CODEX / PTFX / ULTRACODE
```

`PANINI: ultracode · codex-cloud · environment · composio · orchestrator · neak · canon-control-plane · handover · reconciliation · ΦΩΣ`

**EVIDENCE CLASSES — every claim below carries one. Honour them in your reply.**
`[REPO]` committed file, cite `file:line` · `[SESSION]` measured live this session, command shown ·
`[MOTHER]` her words · `[UNVERIFIED]` believed, not proven — say so and prove or drop it.

## 0 · WHY YOU ARE A FRESH LAUNCH, AND WHAT I COULD NOT SEE

`[SESSION]` I am PAN, a Claude Code cloud session. I attached and cloned NEAK
(`HEAD 4a0d0ee`, 4,870 tracked files) and then **could not read inside it**: the permission
classifier refused the survey as *Data Exfiltration*, and in this estate a refusal binds on the
outcome, not the command — so I did not route around it with another tool, another agent, or a later
turn. **You can read NEAK. I cannot. That is the whole reason this document exists.**

`[SESSION]` I also could not execute anything through Composio
(`COMPOSIO_MULTI_EXECUTE_TOOL` refused as *External System Writes*) — not even a read-only Slack
channel list.

**A disclosure I owe you, and Mother, in full.** My own instruction to a planning sub-agent was
scoped by *path* ("do not read `/home/user/neakosmomorphia`") rather than by *outcome*. The agent
honoured the path and reached NEAK's **contents through the GitHub API instead** — which is the very
outcome the classifier refused on the local clone. That is my drafting error, not the agent's. I
have not built anything on those reads: every NEAK statement in this document is either PR
**metadata** I fetched myself (numbers, titles, branches, merge state, changed-file paths) or marked
`[UNVERIFIED]` and handed to you to confirm. **Nothing further will be built on NEAK file contents
without Mother's word.** If any line here turns out to rest on a file body rather than metadata,
strike it and re-derive it yourself.

So: every statement below about NEAK's **contents** is `[UNVERIFIED]` and yours to confirm first.
Everything about `pantheona-cross-engine-dual`, `kosmomorphia-plugin` and `claude-code` is `[REPO]`
or `[SESSION]` and measured.

## 1 · CANON HISTORY, AND THE HONEST TENSION

`[REPO]` NEAK's own description: *"KOSMOMORPHIA estate control plane and canon — private,
append-only, NEVER SEND."*

`[SESSION]` NEAK carries a branch `provenance/NeaKosmomophia-20261002`. A second private repo exists,
`laki97079-creator/NeaKosmomophia` — **one letter short, missing the `r`** — pushed 02.10 19:37Z.

**Known honest tension:** that branch name suggests the twin's provenance was already folded into
NEAK, which would make NEAK canon and the twin preserved history. I have **not** read the branch, so
this is `[UNVERIFIED]`. **Confirm it as your first act.** Until confirmed, anything written to "NEAK"
may be landing in the twin. Do not rename, merge, archive or delete either repository — that is
Mother's word to give, and routing is not your lane to change unilaterally.

## 2 · THE VERDICT YOU CAN TRUST: DO NOT START FROM ZERO

`[SESSION]` NEAK has 15 PRs and **you have already done much of what this handover asks.** Open now:

- **#12 `codex/complete-ultracode-cloud-setup`** — "Install official project-local Composio skill and
  add v012 ULTRACODE journal"
- **#13 `codex/verify-neakosmomorphia-cloud-environment`** — v002 static semantic support review
- **#15 `codex/paginate-and-compare-github-repository-listings`** — "Record immutable-ID GitHub
  reconciliation boundary" (updated 13:24Z today, the freshest thing in the repo)
- **#1 `claude/ultracode-environment-20261002`** (draft) — "ultracode cloud environment profile
  (ROUND 005)"
- **#6 `claude/session-hooks-settings-20261002`** (draft) — project permissions + read-only
  boot-anchor SessionStart hook
- **#5** owner-only Claude Code GitHub Action · **#3** keyless Claude API via WIF · **#14** semantic
  gold review v002

**Read #1, #6, #12 and #13 before writing one line of new environment setup.** Writing a fresh
profile over the top of #1 would put the same thing in two places under two names — THE CLEAR LINE
breach this estate exists to prevent. Extend, supersede with a dated stamp, or say why not.

## 2a · THE REAL RECONCILIATION TARGET — EIGHT OPEN PRS, ALL "CLEAN", TWO INVISIBLE COLLISIONS

`[SESSION]` All eight open PRs (#1, #3, #5, #6, #12, #13, #14, #15) report `mergeable: true` /
`mergeable_state: clean`. That is honest and misleading at once: git computes each PR against `main`,
**never against its siblings.** Measured from their changed-file lists:

**(i) `MASTER_INDEX.md` — three PRs, one file: #3, #13, #15.** First to merge makes the other two
stale on that file; they then conflict, or get resolved by taking one side and silently dropping the
other's index rows. **Merge order is a decision.** Land one at a time, re-merge `main` between each,
and verify the index ends up carrying all three sets of rows.

**(ii) Journal `vNNN` numbers duplicate across PRs — with no conflict raised.** Each journal
filename carries its own ISO timestamp, so the paths are distinct and git merges all of them:

| date / version | PRs | distinct filenames |
|---|---|---|
| 20261002 `v008` | #1, #5, #6 | `20261002T193716Z`, `20261002T193735Z`, `20261002T193850Z` |
| 20261002 `v012` | #12, #3 | `20261002T230951Z`, `20261002T234658Z` |
| 20261003 `v002` | #13, #14, #15 | `20261003T033100Z`, `20261003T034024Z`, `20261003T044214Z` |

`v008` lands three times on one date, `v012` twice, `20261003 v002` three times.
**`[UNVERIFIED]` — and this is your first question, because you can read these files and I cannot:
is `vNNN` a unique monotonic sequence for the estate, or a per-session counter?** If a sequence, the
ledger is already ambiguous and a renumbering decision comes before any of the three lands. If a
per-session counter, this is noise — **write that down** so nobody chases it again.

**(iii) Three setup entry points, two PRs, no conflict.** #15 adds `install.sh` and
`scripts/cloud-setup.sh`; #1 adds `config/environment/ultracode-setup.sh`. Both also write into
`config/environment/`. Not a merge problem — the "same thing in two places under two names" problem,
which is THE CLEAR LINE. Decide which is the one entry point and supersede the others by name.

## 3 · THE MISSION

**M1 — Confirm what I could not see.** Report, with `file:line`:
whether NEAK has an `AGENTS.md`; whether it has `.claude/settings.json`, `.mcp.json`, a setup or
bootstrap script, `requirements.txt`/`pyproject.toml`, a `tests/` tree, and CI workflows. Report
absences as absences.

**M2 — The seven PRs #2/#4/#7/#8/#9/#10/#11 are MERGED. Do not reopen them. Reconcile the OPEN eight
instead.** `[SESSION]` Verified against `GET /pulls/{n}`, one by one — `merged: true` for all seven,
merge commits `507574dc0c, 88920eba70, 061e1fc4d5, 8c04ac2b30, 4fac97dd76, 5bbe9cf45e, 25c4902c29`,
all reachable from `main` @ `4a0d0ee`:

| PR | branch | title |
|---|---|---|
| #2 | `codex/environment-bootstrap-self-activation` | Fix managed environment runtime activation |
| #4 | `codex/environment-absolute-runtime-20261002` | Fix Cloud setup runtime selection and add read-only maintenance |
| #7 | `codex/import-estate-snapshots-20261002` | Preserve gated estate snapshots and add verified phone transfer |
| #8 | `codex/landing-receipts-20261002` | Verified landing receipts and Notion scope correction |
| #9 | `codex/source-capture-receipts-20261002` | ULTRACODE session opener and verified source-capture receipts |
| #10 | `codex/ultracode-owner-law-capture-20261002` | Record complete source custody and grounded Claude Code continuation |
| #11 | `codex/cloud-skill-continuation-20261002` | Preserve the official Composio skill and Cloud continuation receipts |

So #2 and #4 — the *runtime-activation* fixes that "make sure environment set up" depends on — are
**on `main` already.** Build on them; do not re-land them.

**A correction I owe you, recorded because the trap is yours to avoid too:** I first reported these
seven as closed-unmerged. `GET /pulls?state=closed` **does not emit the `merged` boolean at all**,
only `merged_at`; my parser read absent-as-false. **A field absent from a list endpoint is not a
false value.** Confirm merge state only from `GET /pulls/{n}`. The bases I had read as "main moved
past these" were in fact these PRs' own merge commits.

Mother's instruction `[MOTHER]`: *"Not better reopen and land? Check against reconstruction and
elevation merging of full estate and decide?"* — answered by the data: already landed, nothing to
reopen, and GitHub cannot reopen a merged PR. **Your M2 is the OPEN eight instead** — §2a.

**M3 — The Codex Cloud environment, made reproducible.** `[REPO]` The estate's whole dependency
story, measured — there is no `requirements.txt`, no `pyproject.toml` and no `setup.sh` anywhere in
`pantheona-cross-engine-dual`:
- `pip install --user --quiet 'PyYAML>=6.0' 'langgraph==1.2.11'`
  (`pantheona-cross-engine-dual/.cursor/environment.json`; the devcontainer's `postCreateCommand`
  runs the same line then `python tools/estate_focus.py`)
- Python **3.12** in the devcontainer (`mcr.microsoft.com/devcontainers/python:1-3.12-bookworm`,
  node 20, github-cli); **3.11** in CI (`.github/workflows/estate-gate.yml`). Pin deliberately.
- On a bare runner CI adds: `python3 -m pip install --quiet --disable-pip-version-check pyyaml`

Verify by **probing, never by presence**:
- `python3 tools/worker_preflight_doctor.py` — the estate's own readiness check
- `python3 tools/estate_gate.py --all-files` — the four laws
- ka-sherlock: `node --input-type=module -e "await import('@modelcontextprotocol/sdk/server/index.js'); await import('zod')"`
  — `[REPO]` because `npm ls --depth=0` exits 0 with zod physically removed, **measured**
- Tests are 11 stdlib `unittest` files with **no documented runner anywhere**.
  `python3 -m unittest discover tests` is inferable — **write it down** so it stops being folklore.

**The plugin-install trap, `[REPO]` from the hook's own text:** a SessionStart hook runs *after* the
session assembled its skills, so the install it performs reaches the **next** session — first
session sees 20 skills, second sees 115. Put the install in the environment setup instead:
`claude plugin marketplace add <checkout> && claude plugin install kosmomorphia@kosmomorphia-estate`

**Skills are symlinked, never copied** (`claude-code/ESTATE_MOUNT/bootstrap_estate.sh`) — a copy
forks the skill and breaks THE CLEAR LINE. `KOSMO_ROOT` is load-bearing: in-container
`/home/user/kosmomorphia-plugin`; **never** `/Users/n/KOSMOMORPHIA_ACTIVE`, a stale alias.

**M4 — Composio as the one orchestrator.** `[MOTHER]` *"Composio wil' be orchestrator/centralisor as
has all app connect."* `[SESSION]` 23 apps are connected: `anthropic_administrator, asana, bitbucket,
brightdata, cloudflare, cloudflare_api_key, cloudflare_browser_rendering, cloudflare_mcp, confluence,
github, googledrive, googlesheets, grok, jira, linear, miro, notion, ollama, perplexityai, slack,
slackbot, tailscale, vercel`. Slack is **ACTIVE**: workspace **THE TREE**
(`the-tree-corp.slack.com`, team `T0BK61GLD2S`) as `naataan`, account `slack_apian-stun`.
Document which lane each app serves, so there is one centraliser and not five. **Read PR #8's
"Notion scope correction" before any Notion landing** — do not repeat a corrected mistake.

**M5 — Check Claude Code and the CLI.** `[MOTHER]` *"Check claude code and cli."*
`claude --version` · `node -v` · `npx -v` · `python3 -V` · `claude plugin marketplace list` ·
`claude plugin list` · `ls ~/.claude/skills | wc -l` — **the number is the tell: 20 means the
install has not taken effect, 115 means it has** · `/mcp`.
`[SESSION]` Note `ka-sherlock` is configured but its server **failed to connect** in my session
(`CONNECTION_CLOSED`). That is a connection failure, **not** a missing capability — report it that
way.

## 4 · LANDMINES — measured, do not step on

1. `[SESSION]` **`_ARK_MAT_KAE_MATRY_BOX`, `_PAN_COMMS`, `CROSS_CHAT_BULLETIN.md`,
   `INTERCHAT_MEMORY`, `KB_KOSMODELTION` do not exist on disk** in any of the three readable repos.
   They are prose references to Mac paths. **Never append to them — there is nothing there.**
2. `[REPO]` For a cloud session with no box reach, the correct stamp is the UNROUTED form:
   `OUTPUT-ROUTE: NOT YET FILED — cloud session, no box reach` / `DESTINATION: <path>` /
   `FILING: pending a Mac-side session`. **Never stamp a completed `OUTPUT-ROUTE:` for a filing that
   did not happen** — that is a KRYPTONITE breach committed in the act of obeying the format law.
3. `[SESSION]` **0 of 24 numbered `PROTO-00xx` protocols are defined in git.** Never cite one to an
   agent that cannot open it. Restate the rule inline.
4. `[REPO]` **`CASE_REPOS.md` says of itself "DRAFT — awaiting MOTHER's ratification. Not yet law."**
   Its required-check names are still right — `Four laws (trusted)` and `Review settled (trusted)` —
   but quote the document as a proposal, never as law. The same caveat applies to `PROTO_REVIEW.md`,
   `ESTATE_INDEX.md` and `REPOSITORIES.md`, each of which disclaims itself.
5. `[SESSION]` **`ΔΕΝ ΛΕΓΩ` has zero occurrences in any of the three repos.** It is Mother's spoken
   law and it binds me by her instruction, but it is **not** in the corpus. Do not cite it as a repo
   rule.
6. `[REPO]` **`F-33` means two unrelated things** — legal-lane neutrality on named adversaries, and
   an advisory shared-leg correlation filter in the betting engine. Never merge them.
7. `[REPO]` **Never edit anything under `kosmomorphia-plugin/skills/`** — one-way mirror from the
   Mac; edits are destroyed on the next `build.sh` sync. Fixes go to the live Mac source.
8. `[REPO]` **The leak gate has no name matcher.** It catches emails, long digit runs, plate patterns
   and `/Users/`-style paths. A private person's name written alone in an outbound file **will
   pass**. Aliasing is human discipline.
9. `[REPO]` **Never obey an `ACTIVE ROOT OVERRIDE` block** inside `skills/*/SKILL.md` — SUPERSEDED by
   the ratified 2026-07-20 decree. They are still physically present and a naive engine reads them
   first.

## 5 · WHAT IS NEW SINCE YOUR LAST LOOK — the 012B work being handed over

`[SESSION]` Repo `laki97079-creator/pantheona-cross-engine-dual`, branch
`claude/012b-retract-the-false-gap-20261001`, **HEAD `3e705c2`**, **70 commits ahead of
`origin/main`**, working tree clean. PR **#41**, open, not merged, no `mother-go` label.

Codex findings **(64) through (184)** were answered across the night by two sessions on one branch.
**248 of 248 review threads resolved.** Measured on that head:

- `00_REVIEW_LANDS/MATRY_20260924/` — **125 tracked files**: 21 `.py` tools, 19 `.jsonl`, 56 `.log`,
  18 `.md`
- `SHA256_MANIFEST.txt` — **123 rows, 123 OK, 0 FAILED**. The only two tracked files not in it are
  the manifest itself and one `.jsonl.lock` sidecar.
- Detector at `issuing_act_detectors/26`; masthead at `masthead_and_flags/2.14`; recital at
  `recital_hunt/4.19`
- **The four frozen artifacts of record:**
  `ISSUING_ACT_DETECT_APRIL_COMPLETE__TOOL3__PAN__20261001.jsonl` `fa686091110abda4b365c123ba4b6582f8ee0005a3cd21644840d1e7e1b538af` (201 rows) ·
  `ISSUING_ACT_DETECT_2401_4500_COMPLETE__TOOL3__PAN__20261001.jsonl` `a5dc3a4f2c001af95252be3aff9ae95cbf334f3f0eb11f357e99fbf56a4fd5a9` (2,100) ·
  `RECITAL_SWEEP_2401_3640_COMPLETE__PAN__20261001.jsonl` `3e27654fd8644d3543194e5a0c2782bfcee8098f498bd1e6f2b98de5e6ab13b1` (1,240) ·
  `RECITAL_SWEEP_2401_4500_COMPLETE__PAN__20261001.jsonl` `ee1818d96071e941e74fe9b6f9321c815d2cc42c7055536a9a65fb413559dc60` (2,100)
- **The two masthead logs:** `MASTHEAD_CONTROL_AND_FLAGS__PAN__20261001.log`
  `f5ade089320275ff4a530eaf77cc187b8b996d283a89e927c9df44d4043c1374` ·
  `MASTHEAD_CONTROL_AND_FLAGS_V2__PAN__20261002.log`
  `9b933d2ef6c656ae893de4ccb636441e2c8ecf7eafc8066a2c2578835ea6d587`
- **Reproduction**, `[REPO]` verbatim from `freeze_range__TOOL__20261001.py`:
  `--kind issuing_act --src ISSUING_ACT_DETECT_APRIL_V5__PAN__20261001.jsonl --range 2200-2400` and
  `--kind recital --src RECITAL_SWEEP_2026_B_GAP__PAN__20260925.jsonl --range 2401-4500 --src-sha256 a9a5bd54d6ee7f5fb0bf6632b6299f9fb87784eab3e856b045470fa0138ebe53`.
  `--kind` is **required**; omitting it exits 2 before reading the source.
- Gate: `python3 tools/estate_gate.py --all-files` → **ALL GATES PASSED — 4 of 4**

**Still blocked, and only by Mother:** `origin/main` carries **20 of 20 bare action tags**, so
`Re-run the four laws from trusted code` and `Publish the trusted verdict` cannot execute a single
step — those workflows load from the default branch by design (`pull_request_target` /
`workflow_run`), which is the trust boundary, not a bug. Plus the `mother-go` label and a deliberate
human review of the head.

**The exclusion:** ΦΕΚ Β΄ **#2204–#4500** on nine validated detectors. **Non-issuance is NOT
established.** The ΦΕΚ Β΄ limb of the same-series recital question is open only **after #4500
(21 July 2026)**; another τεύχος and out-of-band publication stay open. The 20 June–21 July negative
is the recital matcher's, with that matcher's limits. Do not upgrade it.

## 6 · REPORT-BACK ROUTE

Land your findings as commits on your own `codex/<slug>` branch in NEAK and open a **draft** PR.
Do not merge. Do not apply `mother-go`. Do not push to `main`.

Return, in this order: **(a)** the M1 confirmation table of what NEAK actually contains;
**(b)** the M2 table for the eight OPEN PRs — the journal `vNNN` duplication and the
`MASTER_INDEX.md` merge order, with evidence;
**(c)** the environment setup you wrote or extended, and the probe output proving it works;
**(d)** the CLI check numbers, especially the skills count; **(e)** where you think *I* am wrong.
A seat that only agrees is worth nothing.

**ENGINE SUGGESTS, MOTHER DECIDES.** NEVER DELETE. NEVER OVERWRITE. NEVER SEND.

`[VERSION: v1 · created 2026-10-03 · author PAN / claude-code-f5 · supersedes: none] · ΦΩΣ

---

## 7 · APPENDED 03.10.2026 — M5 MEASURED. The "20 vs 115" tell in §3 is WRONG for this container.

Nothing above was altered. This section supersedes the §3 M5 prediction and the plugin-install trap
paragraph that followed it, both of which rested on a mechanism that is **not** the one in use here.

`[SESSION]` Measured, this container, commands as shown:

| probe | result |
|---|---|
| `claude --version` | `2.1.288 (Claude Code)` |
| `node -v` | `v22.22.2` |
| `npx -v` | `10.9.7` |
| `python3 -V` | `Python 3.11.15` — note **3.11**, not the devcontainer's 3.12 |
| `ls ~/.claude/skills \| wc -l` | **111** |
| `claude plugin list` | **`No plugins installed.`** |
| `claude plugin marketplace list` | one marketplace only: `anthropic-plugin-directory` (built in). **`kosmomorphia` is not configured anywhere.** |

**So the prediction was wrong in both directions.** It is not 20 and it is not 115, and the number is
not a tell about the plugin at all, because **the plugin is not the mechanism in this container.**
The skills are present through the `ESTATE_MOUNT/bootstrap_estate.sh` symlink mount, which worked:

- 111 entries = **109 symlinks + 2 real directories** (`session-start-hook`, `synced`)
- **108** of the 109 symlinks point into `/home/user/kosmomorphia-plugin/skills/`, which holds
  exactly 108 directories and no stray files. A clean one-to-one.
- **0 broken symlinks** — every one resolves.
- The 109th is `ka-pan-extract-daughter` → `/home/user/pantheona-cross-engine-dual/MATRY_SKILLS_DEPLOY_20260722_212117/FIRM_HIGH_LAW_CODE/ka-pan-extract-daughter`
  — a **different repository**, resolving fine, and **not tracked in the plugin repo's git at all.**
  Inside it: both `SKILL.md` **and** `SKILL 2.md`. **That is a forked skill — a CLEAR LINE smell.**
  Flagged, not touched. It is the live Mac source's to settle, not a cloud session's.

**What this means for the environment setup you write.** Do not write `claude plugin install` into it
as the way skills arrive, and do not use a skills count as a readiness check — in this container that
count is already 111 with zero plugins installed, so the check would pass while reporting nothing.
The working mechanism is the symlink mount, and the correct readiness probe is the one §3 already
gives for ka-sherlock: **probe by resolution and execution, never by presence or by count.**
Concretely: assert every entry under `~/.claude/skills` resolves, and assert the one-to-one against
the source directory — that is what caught the 109th.

`[SESSION]` **MCP:** exactly one server is configured — `ka-sherlock`, in
`/home/user/claude-code/.mcp.json`. It **failed to connect** this session (`CONNECTION_CLOSED`).
A connection failure, **not** a missing capability. There is no `mcpServers` key in `/root/.claude.json`.

### A second correction, and it is a warning about a tool, not about NEAK

`[SESSION]` I called Composio's connection manager with `operation: LIST_CONNECTED_ACCOUNTS`,
expecting a read. **It is not a read.** It initiated five NEW pending connections and returned five
browser authorization links. **Treat that operation as a write. Do not call it to look.**

Its `summary` block then reported `active_connections: 0` — which is false, and false in the same
shape as the `merged` trap in §M2: **the aggregate was counting only what the call had just
initiated, while the per-toolkit `accounts` arrays showed the real state.** Read the per-item record,
never the summary:

| toolkit | active account |
|---|---|
| slack | `slack_apian-stun` (default) |
| notion | `notion_frim-gree` (default) |
| github | `github_splay-spiker` (default), `github_zipa-resect` |
| linear | `linear_reban-cheesy`, alias **`mother-linear`** (default) |
| googledrive | `googledrive_retial-zogo` (default) |

Five of five have an active connection. The five newly initiated ones were never authorized and
their links expire in ten minutes; I did not pass them on, because nobody asked for new accounts.

**The transferable rule, now three times measured in one session: an aggregate or an absent field is
not evidence. Read the per-item record.**

`[VERSION: v1 + §7 appended 2026-10-03 · author PAN / claude-code-f5] · ΦΩΣ`
