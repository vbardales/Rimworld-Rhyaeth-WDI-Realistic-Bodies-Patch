---
mod: Rhyaeth WDI Realistic Bodies Patch
packageId: nelim.rhyaethwdirealisticbodiespatch
repo: Rimworld-Rhyaeth-WDI-Realistic-Bodies-Patch
remote: https://github.com/vbardales/Rimworld-Rhyaeth-WDI-Realistic-Bodies-Patch.git
visibility: public
detached: yes
workflow_stage: playTests[1.0.0]
licence: original
licence_at: "2026-10-30: original creation, an XML patch written here; it only points at texture paths of WDI's Realistic Bodies and at a FurDef of Erin's Rhy'aeth, both required and none copied. MIT."
upstream_mod_remotes: N/A
settings_audit: not_applicable
localization: not_applicable
translation_en: not_applicable
translation_fr: not_applicable
dependencies: complete
workshop: none
published: no
tested_on: "2026-10-31: 1.6, English, repository sha 37b76a4, Pickle ticket 2ece, 18 of 18 passed (docs/runs/history.md)"
remaining:
  - "2026-10-31: playTests: initial diagnostic green, ticket 2ece, 18 of 18, English, sha 37b76a4 (Docs/runs/history.md); evidence minified in Tests/Pickle/Evidence/initial-english; no @wip. TM said '1 tentative': not visible in summary.json (all attempts 1), cause unknown"
  - "2026-11-01: unverified: 8.d ticket ba58 (12 scenarios, 12/12 green, root size 6) framed Jet too far (Virginie). Fix 31f174e: root size 3. Ticket a381 crashed 2026-11-02 (exit 139 in engine boot, Player.log has no mod exception, infra-class), refiled as f2bb, green 4 of 4 but Jet carried a rock (Virginie, 2026-11-02): suite now creates a fresh colonist "Rhy" by step (NSB recipe) with studio UI steps, commit a39df77, ticket 0ea3 cancelled before it started; 2026-11-02 validated look added (female = Celeste, male = Iori: skin gene, hair colour gene, hairstyle; map gains Genes Expanded Skin, HD Hair, VHE), commit b5cb686, ticket 3bba crashed 139 (infra, engine boot), refiled 245c GREEN 2 of 2 (Iori male Male body, Celeste female Female body; Inbox/look-check; skin, hair colour and hairstyle draw; both seen from behind, no facing step; 827d was cancelled by me, never ran); Virginie asked for front views too: step `"Rhy" faces South` exists (NPT), commit 1d3e757, ticket c7d3 queued (same 2 scenarios, Inbox/look-front); Virginie: wings and tail hide the WDI body from behind, so body-only outline added (NPT step `loses the gene`, new and not played, wings + 4 tails removed), commit 782e646, ticket e7ee merged with c7d3 by the TM in one launch: GREEN 4 of 4, exit 0 (front and body-only, male Male and female Female; all in Inbox/look-front, no body-only folder; ba53 cancelled by me). Seen 2026-11-02: front shows the head well; body-only shows a pale cyan torso, same for both skin colours, no arms or legs visible, colonist small in frame (root size 3); the cyan torso is the default apparel of a new colonist (NPT), so shirtless and naked outlines added (NPT steps `takes off the garments covering "Torso"` new and not played, `is undressed`), commit 2984679, ticket 9461 GREEN 4 of 4 (Inbox/undressed), Virginie: "top" (look and framing validated); Virginie asks for Hulk female naked from South, North, East: scenario outline "Hulk female turntable" commit f3143ad (not pushed), ticket 4e84 crashed exit 3 (infra, engine boot, no missing mod), refiled ce16 GREEN 3 of 3 (Inbox/hulk-turntable, South North East, shots sent to Virginie, verdict awaited); Virginie validated Hulk turntable and framing 2026-11-02; replay of whole feature 02 filed as ticket d9b1 (Inbox/framing-replay, commit ba0a72e), exit 3 guard stop 2026-11-02 (staging stalled 5 min, no game started, map unchanged since green ce16, Windows RAM 0,9 of 15,1 GB free, commit 40,0 of 43,4 GB: infra), refiled 2026-11-03 as ticket 261c (same filter 02-rhyaeth-bodies, same map, queued). NSB asked about colonist Baleste (Rhy'aeth female Hulk): answered 2026-11-01, NSB files its own ticket"
  - "2026-11-02: separate task, gates nothing (Audit): Virginie wants a catalogue of all Rhy'aeth body parts (Erin.Rhyaeth: heads, horns, tails, ears, wings, body-part genes) as a priority. Owner NPT (catalogues + contact sheets); a page of this mod may live in Docs/ via NPT's pages.json manifest. NPT DONE 2026-11-02 (PickleTools 10775f5): table ColonistRace/docs/catalogues/rhyaeth.md (31 defs), sheet PickleTools/ColonistRace/docs/img/looks/2901 Parties du corps Rhyaeth - Rhyaeth - 1.jpg; limit: Rhy'aeth head not drawn in NPT shots (but drawn in my front shots), male head not photographed, asked Virginie. Also pending: Virginie to pick Celeste or Iori (NSB profiles, Docs/IORI-PROFIL.md) as the look of the captured colonist, sheets still under construction"
  - "2026-10-31: unverified: 8.i Player.log not read (run minified before reading, Player.log dropped); raw key and error check needs a read of a new run's log"
  - "2026-11-04: 8.h feature 03-no-settings written (NPT step: the mod options page of the mod ... does not exist, no MainButtons step needed: no MainButtonDef), not played yet, ticket 8136 queued (filter 03-no-settings, map wsl-deps.rhyaeth.map, tree 8d0cf85)"
  - "2026-11-04: 8.m code review done (Opus sub-agent, d0b6b78..HEAD, Mod/ only, XML, no C#): no loading error; six xpaths match Erin 1.6 and 1.7 FurDef, every ScalySkin_<Type> has south, north and east; About.xml description fixed (WIP line, Baby exception), commit 0f4fcf3. Observation only: a female Thin, Hulk or Fat Rhy'aeth gets the unisex ScalySkin_<Type>, WDI's _Female variants are not used (a FurDef path cannot express gender). Not done: 1.7 pass (tested_1_7) not started; French run not played (not_applicable, no text)"
code_review_sha: 0f4fcf3a78b51a3db31717b723c3b51916c96111  # 2026-11-04, range d0b6b78..0f4fcf3, Mod/ only
updated: 2026-11-04
protocols_read_sha: f7f1b777c0ba8adde19aadf4fce311fea2f82f1b
---

# Rhyaeth WDI Realistic Bodies Patch: status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod RhyaethWdiRealisticBodiesPatch` (no ERROR) before the commit that leaves the monorepo.

Skeleton created 2026-10-30: closed-list folders only, `Mod/About/About.xml` with `Erin.Rhyaeth` and `WDI.Realistic.Bodies`, no code, no patch, no art.

2.e: `Art/Preview-source.png` received 2026-10-30. `Measure-Palette.sh`: 2 hue families (0 and 30), mean value 0.586, no face, nothing standing frontal, two Rhy'aeth seen from behind in a lamp pool. Prompt file deleted (2.f).

## Dependencies (2026-10-30, revision of this commit)

Read from the patch and from `Mod/About/About.xml`, not from intent.

| Dependency | packageId | Workshop | Kind | Why |
| --- | --- | --- | --- | --- |
| Erin's Rhy'aeth | `Erin.Rhyaeth` | 3707527452 | hard | the patch edits its `FurDef` `ERN_RhyaethBody` |
| WDI's Realistic Bodies | `WDI.Realistic.Bodies` | 3527486510 | hard | owns the `Pawn/ScalySkin/ScalySkin_<Type>` textures the patch points at |

- Optional integrations: none. The patch is unguarded because both mods are hard dependencies, so it never loads without them.
- DLC: none named by this mod. Biotech comes through Erin's Rhy'aeth, which declares it.
- Transitive: Erin needs Vanilla Expanded Framework; WDI declares Female Body Variants (`tiagocc0.FemaleBodyVariants`; the Continued version 3798082132 is installed, the original 3105933543 is not). It is not a dependency of this mod; it loads a female variant of the Naked_Thin/Fat/Hulk body textures by name, and whether it also reroutes the fur paths of this patch is unverified until `playTests`.
- `loadAfter`: `Ludeon.RimWorld`, `Erin.Rhyaeth`, `WDI.Realistic.Bodies`. `incompatibleWith`: none.
- Game version: `supportedVersions` 1.6 only; no `LoadFolders.xml`, no version folder. Erin supports 1.6 only; WDI 1.5 to 1.7.
- Load order: `scripts/sort-load-order.py --version 1.6 --explain` on the three About.xml, exit 0, order Erin, WDI, this mod, no cycle.
- Animal integrations (ANIMALS.md): not applicable, the mod adds no animal.

## Settings audit (2026-10-30, MOD_SETTINGS.md)

Files read at this commit: `git ls-files Mod` gives `About/About.xml`, `About/ModIcon.png`, `ATTRIBUTION.md`, `LICENSE`, `Patches/RhyaethScalySkin.xml`.

- Inventory: the mod is one XML patch of six `PatchOperationReplace`. No C# (no `Source/`, no `Mod/Assemblies/`), no `ModSettings`, no `MainButtonDef`, no `Languages/` folder, no configurable behaviour, nothing inherited, no optional integration.
- Decision: no settings. The only conceivable option, turning the scaly bodies off, is already the player's choice of keeping the mod enabled or not, and a toggle would need code and a dependency for nothing (MOD_SETTINGS.md 1: no invented option).
- Absence verified: no Mod options page and no MainButtons shortcut can exist, since nothing in `Mod/` defines either. Read from the files only: the in-game check (Mod options list does not show this mod, no MainButton) is `unverified` until `playTests`.
- Technical and functional tests (MOD_SETTINGS.md 4): all not applicable except "No settings", listed above.
- Result: `settings_audit: not_applicable`.

## Translation audit (2026-10-30, TRANSLATIONS.md)

Revision: the commit that carries this section. Files read: `git ls-files Mod`, `Mod/Patches/RhyaethScalySkin.xml`, `Mod/About/About.xml`.

- Inventory: the only game content is six `PatchOperationReplace` that change texture paths inside `FurDef ERN_RhyaethBody`. No label, description, jobString, letter, message, gizmo, tooltip, thought, recipe or research text is added or changed. No C#, no `Languages/` folder, no Keyed key, no DefInjected entry, no grammar file, no LoadFolders folder.
- `About.xml` description and licence texts are outside the in-game translation gate (TRANSLATIONS.md 2) and are in English, as PUBLISHING.md asks.
- Result: `localization`, `translation_en`, `translation_fr` are `not_applicable`: the inventory proves the mod adds or changes no relevant text.
- Commands: `Check-Translations.ps1 -ModRoot` PASS with 0 source texts; `Make-FrenchReview.ps1 -ModRoot` written, it says the mod adds no player-facing strings. `Check-DefInjected.ps1` is for translation mods, not applicable.
- French review by Virginie: nothing to review, `FRENCH_REVIEW.md` says so. The review line stays hers and empty.
- In game: raw-key and fallback check is `unverified` until `playTests`.

## Tests (2026-10-30, writeTests)

Offline, on revision `14d0677` of this repository, Erin's Rhy'aeth 3707527452 and WDI's Realistic Bodies 3527486510 as installed:
- `Test-PatchXml.ps1` (shared, protocols repo): six `PatchOperationReplace`, six xpaths matched, six texture paths found, exit 0. Output in `TESTING.md`.
- `Check-Steps.ps1`: 2 features, 4 scenario blocks, every step line resolves to one expression. `Check-Translations.ps1`: PASS, 0 texts. `Check-Status.ps1`: 0 errors.
- No C#: no unit tests, not applicable. No local script in this repository, so nothing to declare in `scripts/LOCAL_SCRIPTS.md`.
- Pickle suites written, not played: `Tests/Pickle/`, pass `wsl-deps.rhyaeth.map`, features `01-textures-resolve`, `02-rhyaeth-bodies` (bodies, child, scale colours; every capture `@review`). Behaviours B1 to B7 in `TESTING.md`.
- Translations: `not_applicable`, see Translation audit.
