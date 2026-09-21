# ESTATE EQUIP — ALL PLANES MOUNTED
`2026-09-20 EEST · PAN · session_01DkLSJ7t1oQUVFs8E7XkZ9T · ΦΩΣ`

Append-only. Third receipt in this lane, after `TECHNICAL_ESTATE_MOUNT` and
`MOUNT_TEST_MATRIX`. Both stand unchanged. Nothing deleted. Nothing overwritten.

## THE ARCHITECTURE, AS THE ESTATE ITSELF DEFINES IT

`MOUNTABLE_ESTATE/README.md` in the cross-engine repo states the split, and it decided how
this equip was wired:

| plane | repo | role |
|---|---|---|
| **SKILL plane** | `kosmomorphia-plugin` | source of truth for skills — "that remains the skill source of truth" |
| **CONTROL plane** | `pantheona-cross-engine-dual` | dual-lane status, journals, prompts, maps, land receipts |
| **sandbox** | `grok-music-estate-sandbox` | MUSIC_ESTATE_v1 + grok_skills. Not canon |

## WHAT IS NOW EQUIPPED [VERIFIED]

| repo | head | files | size |
|---|---|---|---|
| `kosmomorphia-plugin` | `8d2895b` | 332 | 76 MB |
| `pantheona-cross-engine-dual` | `8ad1ed4` | 9,320 | 293 MB |
| `grok-music-estate-sandbox` | `728e7dc` | 52 | 300 KB |

**109 skills wired and live**, every one a **symlink to canon** — not a copy. A copy would
fork the skill and break THE CLEAR LINE. Verified: 109 of 109 entries are symlinks, and
each resolves into a repo checkout.

The law firm is live and invocable, no longer merely readable:
`ka-in-house-counsel` · `ka-themissiakon-engine` · `ka-xandrya-nomokrawl` ·
`ka-legal-audit` · `ka-legal-pdf-studio` · `ka-legal-exhibit-designer` ·
`themissiakon-audit` · `legal-redline` · `legal-version-lock` ·
`cross-engine-legal-review` · `ka-loutrakon` · `ka-diavgeia` · `ka-cadastre` ·
`ka-greek-ocr` · `ka-protagonist-crawl` · `cdb-strategos` · `ka-pantheona-call` ·
`ka-sherlock` · `ka-tekhna-khon` · `ka-clear-line-guard` · `ka-skill-router`.

## TERMIGROK — WHAT IT IS, AND WHY IT IS NOT HERE

Termigrok is a Grok terminal agent that works inside a **git worktree on the Mac**:

```
/Users/n/KOSMOMORPHIA_RUNTIME_LOCAL/00_ESTATE_OPS_CLEAN/10_PROTOCOL/WORKTREE_TERMIGROK
  -> /Users/n/.grok/worktrees/mother-theospora-kosmomorphia/termigrok-pantheona-012b
```

It carries its own `PROGRESS.md`, `STATE.json`, snapshots and proof directories, and a
`ZSHRC_PROPOSED_BLOCK__PENDING_MOTHER_GRANT.zsh` — a shell block it has drafted and is
**waiting for your grant** to install.

**Its working tree is Mac-only and cannot be reached from a remote container.** What IS
equipped is everything it has *landed* into the control plane: the onboard and continue
packs, the TEKHNA map, the Khryso tree, the Sherlock outputs, the dashboard, the node
maps, and the journals. That is its record, not its runtime. [VERIFIED — the worktree path
is recorded in the landed docs; the directory itself does not exist here.]

The proposed zshrc block is **not in any repo I can reach** — it lives beside the worktree
on the Mac. If you want it reviewed before you grant it, it has to come to me.

## 012B MATERIAL NOW IN REACH

The control plane carries the v38 line your standing order settles:

- `LANDS_TRIPLE/.../02_V38_LIVE/012B_ADDENDUM_4103_v38_PRODUCED__SUPERGROK__012B__20260723__006KB.md`
- `LANDS_TRIPLE/.../10_V38_DRAFT/012B_ADDENDUM_4103_v38_DRAFT_SPINE__SUPERGROK__012B__20260723__006KB.md`
- `LANDS_TRIPLE/FULL_012B_LEGAL_ROUNDUP__20260723_012009/09_THEMISSIAKON/` — L1 rubric, L2
  S-lane, `FILTERS_012B_KOK.csv`, run logs
- `012B_MASTER_VERSION_LOCK_MANIFEST__PAN__012B__006KB.md`
- `012B_COMMAND_DASHBOARD_BOXROOT.html`

This changes the licence-letter picture: a v38 line already exists and is produced. The
letter I drafted this session was built from law and conventions, not from v38. **They must
be reconciled before anything is sent** — see NEXT.

## TWO DEFECTS FOUND

**1. An orphaned skill.** `ka-pan-extract-daughter` exists in the control plane's
`MATRY_SKILLS_DEPLOY_20260722_212117/FIRM_HIGH_LAW_CODE/` (40 skills) but was **never
ported into the skill plane** (108 skills), and **nothing in the plugin references it** —
zero hits for `pan-extract-daughter` across the whole plugin. It is the same class of
defect as the `tekhna-khon` dangling router dispatch found in the previous session. It is
equipped here from the control plane so it is not lost, but the port is still owed.

Its own `SKILL.md` and `SKILL 2.md` are **byte-identical** (SHA-256
`e5eef78c2ddb…`) — a true duplicate, not a VERSION. Unlike the tekhna-khon fork, this one
loses nothing.

**2. Six skills exist as two different truths.** Same name, different SHA-256 between the
skill plane and the control plane's FIRM set. Same name and size is not same content; only
the hash proves it:

| skill | plugin bytes / sha | FIRM bytes / sha |
|---|---|---|
| `ka-common-server` | 4921 / `c0720193bdcb` | 5812 / `4ef1387fd1ad` |
| `ka-diavgeia` | 8792 / `4a0950688ea6` | 8734 / `0096984b9bad` |
| `ka-fleet-bus` | 6670 / `34d76a2a4e11` | 7504 / `059df697c866` |
| `ka-khrysothekon` | 8535 / `81e51b6e64a5` | 8274 / `dd610f5e713d` |
| `ka-sherlock` | 7400 / `442a8f6beac8` | 7313 / `994825143f9c` |
| `ka-skill-router` | 19608 / `975032a9c8d3` | 19144 / `35b909833446` |

The other 32 shared skills are byte-identical — PRESENT, not VERSION. The equip links the
**skill plane** copy for all six, because the estate's own README names it the source of
truth. Neither side is deleted. Which is newer is **[UNVERIFIED]** and is a MOTHER DECIDES.

`ka-skill-router` and `ka-sherlock` are the two that matter most: the router dispatches
everything, and Sherlock is the hash authority. A fork in either is a fork in the estate's
own nervous system.

## DURABLE, NOT JUST THIS SESSION

`ESTATE_MOUNT/bootstrap_estate.sh` now clones all three planes and wires all 109 skills.
Both paths tested: cold (linked=109) and warm (kept=109, linked=0, nothing touched). It
refuses an occupied non-git path, and a failed clone never blocks startup.

Without it, this equip dies with the container.

## STILL OUT OF REACH

Termigrok's live worktree · the pending zshrc block · the ENGINE runtime and the 12 TEKHNA
files · the obsidian vault · the Mac canon root `/Users/n/Desktop/MOTHER THEOSPORA/`
(verified absent — `/Users` does not exist here).

## LAWS OBSERVED

NEVER DELETE · NEVER OVERWRITE · symlinks not copies, so the CLEAR LINE holds · SHA-256 is
the only proof of identity · same name and size never assumed to be same content · every
count from a full listing, never a truncated one · unverified marked [UNVERIFIED] ·
ENGINE SUGGESTS, MOTHER DECIDES.

ΦΩΣ
