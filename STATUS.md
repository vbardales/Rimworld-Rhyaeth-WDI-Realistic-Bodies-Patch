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
tested_on: never
remaining:
  - "2026-10-30: unverified: playTests: Tests/Pickle suite (01 textures, 02 bodies, scales) written, never played; NPT steps fur path and skin colour compiled, not played; needs a Pickle ticket via the TM"
  - "2026-10-30: unverified: translation: confirm in game at playTests (8.i) that no raw key or missing text shows; the mod adds none"
  - "2026-10-30: unverified: settings: no Mod options entry and no MainButtons shortcut, checked from files only; confirm in game at playTests (8.h)"
  - "2026-10-30: unverified: patch written, applied only to Erin FurDefs.xml by xpath; in-game look (tint, scales on each body type) not yet played"
updated: 2026-10-30
protocols_read_sha: b16f3cc69bacfeaf20e238a4c99f0a33831d966a
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
