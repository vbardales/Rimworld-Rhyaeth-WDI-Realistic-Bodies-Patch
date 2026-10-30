# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it in game.

## [Unreleased]

### Added

- `Mod/Patches/RhyaethScalySkin.xml`: the `FurDef` `ERN_RhyaethBody` of Erin's Rhy'aeth now draws its Female, Male, Thin, Hulk, Fat and Child bodies with the `Pawn/ScalySkin/ScalySkin_<Type>` textures of WDI's Realistic Bodies. Baby keeps Erin's own swaddled-baby texture, WDI has none. One operation per body type, so a node that goes missing skips only itself.
- Repository skeleton and `Mod/About/About.xml` with the two dependencies.
