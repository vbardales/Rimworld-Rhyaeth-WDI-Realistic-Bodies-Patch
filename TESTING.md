# Testing

The mod is one XML patch, `Mod/Patches/RhyaethScalySkin.xml`: six `PatchOperationReplace` on the `bodyTypeGraphicPaths` of `FurDef ERN_RhyaethBody` (Erin's Rhy'aeth), pointing Female, Male, Thin, Hulk, Fat and Child at `Pawn/ScalySkin/ScalySkin_<Type>` (WDI's Realistic Bodies). Baby is left alone.

## Behaviours

| # | Behaviour | Setup | Action | Expected | Evidence |
| --- | --- | --- | --- | --- | --- |
| B1 | Each of the six xpaths matches a node of Erin's `FurDef` | Erin's `FurDefs.xml` | apply each `xpath` of the patch to it | six nodes found, six values replaced | offline XML test (not written, see below) |
| B2 | The six target textures exist where the patch points | WDI's `Textures/Pawn/ScalySkin` | look up `ScalySkin_<Type>_{south,east,north}.png` | 18 files present | offline XML test; in game `01-textures-resolve.feature` (answered by `WDI.Realistic.Bodies`) |
| B3 | Baby is untouched | the patch file | read it | no operation names `Baby` | offline XML test |
| B4 | A Rhy'aeth colonist of each body type is drawn with the scaly body | `test-colony`, Jet as Rhy'aeth, gender, body type | load, set, photograph | no error logged; scales read as WDI's on the capture | `02-rhyaeth-bodies.feature` (`@review`, 9 captures) |
| B5 | The scale colour genes still tint the new texture | same, a colour gene | photograph | scales tinted, not grey | `02-rhyaeth-bodies.feature` (Green, Bronze, White; `@review`) |
| B6 | The fur node draws the patched path | same | read the fur node of the pawn | path is `Pawn/ScalySkin/ScalySkin_<Type>` (a `_Female` suffix tolerated) | `02-rhyaeth-bodies.feature`, NPT step `the fur of {string} is drawn from {string}` (compiled by NPT 2026-10-30, not played) |
| B7 | Female Body Variants does not break the female Thin, Fat, Hulk bodies | same, female | photograph | bodies drawn, no error | `02-rhyaeth-bodies.feature` (female rows) |

A green capture says a file was taken, not that the scales are WDI's: each `@review` picture is opened and read.

## Offline

`scripts/Check-Status.ps1`, `Check-ModBasics.ps1`, `Check-Translations.ps1` (0 texts) and `Check-Steps.ps1` (all step lines resolve) pass (`Check-ModBasics` still reports `Mod/About/Preview.png` missing, made at `mountPreview`). No C#, so no unit tests (not applicable). The XML test is the shared `Test-PatchXml.ps1`, below.

## In game

`Tests/Pickle/`, pass `wsl-deps.rhyaeth.map`, never launched by a session: filed with `Submit-PickleRun.ps1`, results by `RUN_DONE`. Not played yet.

### XML test (B1, B2, B3)

Shared script, no local copy: `scripts/Test-PatchXml.ps1` of the protocols repository (Audit, 2026-10-30).

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/Test-PatchXml.ps1 -ModRoot RhyaethWdiRealisticBodiesPatch `
  -TargetDefs "<workshop>/3707527452/1.6/Defs/GeneDefs/FurDefs.xml" -TextureRoots "<workshop>/3527486510/Textures"
```

Replayed 2026-10-30: six `PatchOperationReplace`, all six xpaths matched (old value to new value printed), all six paths found as `_south.png` in WDI, exit 0. Without `-TextureRoots` the script reports six failures, exit 1 (Audit's negative case). B3 (no `Baby` operation): read in the patch file, six operations named Female, Male, Thin, Hulk, Fat, Child.
