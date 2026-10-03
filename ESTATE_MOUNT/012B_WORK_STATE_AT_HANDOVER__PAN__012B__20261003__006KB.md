<!-- OUTPUT-ROUTE: NOT YET FILED — cloud session, no box reach
     DESTINATION: /Users/n/Desktop/MOTHER THEOSPORA/_ARK_MAT_KAE_MATRY_BOX/MATRY_20261003/
     FILING: pending a Mac-side session -->

# 012B WORK STATE AT HANDOVER — measured, not remembered

`03.10.2026 · PAN · claude-code-f5 · 012B PÂAKÉ~TÂARA · ΦΩΣ`

Every number below was re-measured on this head immediately before this file was written. Nothing is
carried over from an earlier session's note.

**EVIDENCE CLASSES.** `[SESSION]` measured live, command shown · `[REPO]` committed file, cite
`file:line` · `[UNVERIFIED]` believed, not proven.

## 1 · THE HEAD

`[SESSION]` Repo `laki97079-creator/pantheona-cross-engine-dual`, branch
`claude/012b-retract-the-false-gap-20261001`.

| thing | value |
|---|---|
| HEAD | `3e705c2` |
| commits ahead of `origin/main` | 70 |
| working tree | clean |
| PR | **#41** — `state=open`, `draft=false`, `merged=false`, `mergeable=true`, `mergeable_state=unstable`, labels `[]` |
| review threads | **248 total, 248 resolved, 0 unresolved** |
| estate gate | `python3 tools/estate_gate.py --all-files` → **ALL GATES PASSED — 4 of 4** |

`merged=false` on PR #41 is read from `GET /pulls/41` — the **single-PR** endpoint, which does emit
the `merged` boolean. The list endpoint does not; see §5.

## 2 · THE LAND — `00_REVIEW_LANDS/MATRY_20260924/`

`[SESSION]` `git ls-files` → **125 tracked files**: 56 `.log`, 21 `.py`, 19 `.jsonl`, 18 `.md`,
4 `.txt`, 3 `.tsv`, 3 `.json`, 1 `.lock`.

`[SESSION]` `sha256sum -c SHA256_MANIFEST.txt` → **123 rows, 123 OK, 0 FAILED.** The only two
tracked files not in the manifest are the manifest itself and one `.jsonl.lock` sidecar.

**Tool versions, read from the `TOOL_ID` constants, not from prose:**

| tool | `TOOL_ID` | file:line |
|---|---|---|
| issuing-act detectors | `issuing_act_detectors/26` | `issuing_act_detectors__TOOL__20260924.py:745` |
| masthead + flags | `masthead_and_flags/2.14` | `masthead_and_flags__TOOL__20261002__v2.py:1053` |
| recital hunt | `recital_hunt/4.19` | `recital_hunt__TOOL__20261002__v4.py:839` |

Beware: grepping the tree for `issuing_act_detectors/<n>` returns `999` and
`recital_hunt/4.999` — those are **test fixtures**, not versions. Read `TOOL_ID`.

## 3 · THE ARTIFACTS OF RECORD — all six re-hashed just now, all byte-INTACT

| artifact | SHA-256 | rows |
|---|---|---|
| `ISSUING_ACT_DETECT_APRIL_COMPLETE__TOOL3__PAN__20261001.jsonl` | `fa686091110abda4b365c123ba4b6582f8ee0005a3cd21644840d1e7e1b538af` | 201 |
| `ISSUING_ACT_DETECT_2401_4500_COMPLETE__TOOL3__PAN__20261001.jsonl` | `a5dc3a4f2c001af95252be3aff9ae95cbf334f3f0eb11f357e99fbf56a4fd5a9` | 2,100 |
| `RECITAL_SWEEP_2401_3640_COMPLETE__PAN__20261001.jsonl` | `3e27654fd8644d3543194e5a0c2782bfcee8098f498bd1e6f2b98de5e6ab13b1` | 1,240 |
| `RECITAL_SWEEP_2401_4500_COMPLETE__PAN__20261001.jsonl` | `ee1818d96071e941e74fe9b6f9321c815d2cc42c7055536a9a65fb413559dc60` | 2,100 |
| `MASTHEAD_CONTROL_AND_FLAGS__PAN__20261001.log` | `f5ade089320275ff4a530eaf77cc187b8b996d283a89e927c9df44d4043c1374` | — |
| `MASTHEAD_CONTROL_AND_FLAGS_V2__PAN__20261002.log` | `9b933d2ef6c656ae893de4ccb636441e2c8ecf7eafc8066a2c2578835ea6d587` | — |

**Reproduction**, `[REPO]` verbatim from `freeze_range__TOOL__20261001.py`:

```
--kind issuing_act --src ISSUING_ACT_DETECT_APRIL_V5__PAN__20261001.jsonl --range 2200-2400
--kind recital --src RECITAL_SWEEP_2026_B_GAP__PAN__20260925.jsonl --range 2401-4500 \
  --src-sha256 a9a5bd54d6ee7f5fb0bf6632b6299f9fb87784eab3e856b045470fa0138ebe53
```

`--kind` is **required**; omitting it exits 2 before the source is read.

## 4 · THE LEGAL EXCLUSION — stated at its real strength, and no further

ΦΕΚ Β΄ **#2204–#4500** swept on nine validated detectors. **Non-issuance is NOT established.**

The ΦΕΚ Β΄ limb of the same-series recital question is open only **after #4500 (21 July 2026)**.
Another τεύχος and out-of-band publication both stay open. The 20 June – 21 July negative belongs to
the recital matcher and carries that matcher's limits. **Do not upgrade it.** Diavgeia cannot narrow
it either — Diavgeia is INFLECTION-lossy, so a Diavgeia negative is not a same-series negative.

`[MOTHER]` **DO_NOT_SEND remains law for 012B.** ONE MATTER = ONE LETTER. v37 DO NOT SEND is
settled; v38 is what gets implemented. **MOTHER DECIDES · MOTHER SENDS.**

## 5 · THE THREE TRAPS THIS WORK MEASURED — carry them forward

1. **A field absent from a list endpoint is not a false value.** `GET /pulls?state=closed` does not
   emit the `merged` boolean at all, only `merged_at`. Read merge state from `GET /pulls/{n}` only.
   I got this wrong on seven NEAK PRs this session and corrected it; the cost of not carrying this
   forward is reopening PRs that already landed.
2. **Presence is not readiness.** `npm ls --depth=0` exits 0 with `zod` physically removed, and a
   zero-test `unittest discover` run passes. Probe by real execution:
   `node --input-type=module -e "await import('@modelcontextprotocol/sdk/server/index.js'); await import('zod')"`.
3. **Same name + same size does not mean same content.** Seven distinct `src` values once shared the
   version name `/5`: `08746a33827c, 31bce581f65f, 4cd2f62405e1, 655d542d399e, 7fe85e8dcb81,
   a69a047e710c, b7ab71d27a3a`. A remedy that names a version name has not named anything — name the
   src hash. Recorded in `VERSION_BUMP_CONTROL_96__PAN__20261002.log`.

## 6 · WHAT IS BLOCKED, AND ONLY MOTHER CAN UNBLOCK IT

Raised once, not re-asked:

1. **`origin/main` carries 20 of 20 bare action tags.** `Re-run the four laws from trusted code` and
   `Publish the trusted verdict` therefore cannot execute a single step. Those workflows load from
   the **default branch** by design (`pull_request_target` / `workflow_run`) — that is the trust
   boundary, not a bug, and **no push to the PR branch can reach them.** The branch itself is pinned
   (20 references to full SHAs, commit `47b46af`); `main` is not.
2. **The `mother-go` label** — not applied, and I will not apply it.
3. **A deliberate human review of the head.**

`mergeable_state=unstable` on #41 is these two unreachable checks, not a conflict and not a failure
in the diff.

## 7 · WHAT I WILL NOT DO

Not merge. Not apply `mother-go`. Not push to `main`. Not submit a review on my own PR to clear the
gate. Not untrack a tracked file. Not send anything for 012B.

**ENGINE SUGGESTS, MOTHER DECIDES.** NEVER DELETE. NEVER OVERWRITE. NEVER SEND.

`[VERSION: v1 · created 2026-10-03 · author PAN / claude-code-f5 · supersedes: none] · ΦΩΣ`
