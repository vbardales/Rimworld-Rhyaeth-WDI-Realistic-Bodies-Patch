---
mod: Rhyaeth WDI Realistic Bodies Patch
packageId: nelim.rhyaethwdirealisticbodiespatch
repo: Rimworld-Rhyaeth-WDI-Realistic-Bodies-Patch
remote: https://github.com/vbardales/Rimworld-Rhyaeth-WDI-Realistic-Bodies-Patch.git
visibility: public
detached: yes
workflow_stage: declareDependencies[1.0.0]
licence: original
licence_at: "2026-10-30: original creation, an XML patch written here; it only points at texture paths of WDI's Realistic Bodies and at a FurDef of Erin's Rhy'aeth, both required and none copied. MIT."
upstream_mod_remotes: N/A
settings_audit: unchecked
localization: unchecked
translation_en: unchecked
translation_fr: unchecked
dependencies: unchecked
workshop: none
published: no
tested_on: never
remaining:
  - "2026-10-30: unverified: patch written, applied only to Erin FurDefs.xml by xpath; in-game look (tint, scales on each body type) not yet played"
updated: 2026-10-30
protocols_read_sha: c6de33235d7caf727b37773a83d706ac8e820aaa
---

# Rhyaeth WDI Realistic Bodies Patch: status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod RhyaethWdiRealisticBodiesPatch` (no ERROR) before the commit that leaves the monorepo.

Skeleton created 2026-10-30: closed-list folders only, `Mod/About/About.xml` with `Erin.Rhyaeth` and `WDI.Realistic.Bodies`, no code, no patch, no art.

2.e: `Art/Preview-source.png` received 2026-10-30. `Measure-Palette.sh`: 2 hue families (0 and 30), mean value 0.586, no face, nothing standing frontal, two Rhy'aeth seen from behind in a lamp pool. Prompt file deleted (2.f).
