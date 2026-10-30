# Design notes

Read from the Workshop folders on 2026-10-30.

## How Erin's Rhy'aeth draws the body

`ERN_RhyaethBody` is defined in `1.6/Defs/GeneDefs/FurDefs.xml`, not in a gene file. It is a
fur gene: `<fur>ERN_RhyaethBody</fur>`, a `PawnRenderNode_Fur` render node on the `Body` tag
(`colorType` Skin, so the scale colour genes tint it), and `useSkinColorForFur` through
`VEF.Genes.GeneExtension`.

The graphics live in the `FurDef` of the same name (`noGraphic` true), `bodyTypeGraphicPaths`:

| BodyTypeDef | Path under `Textures/` |
| --- | --- |
| Female, Male, Thin, Hulk, Fat, Child | `Things/Pawn/ERN_Rhyaeth/Bodies/ERN_RhyaethBody<Type>` |
| Baby | `Things/Pawn/ERN_Rhyaeth/Bodies/ERN_SwaddledBaby` |

## What WDI's Realistic Bodies offers

Textures only, no Defs: `Pawn/ScalySkin/ScalySkin_<Child|Fat|Fat_Female|Female|Hulk|Hulk_Female|Male|Thin|Thin_Female>_<east|north|south>`.
No Baby texture. `Fat_Female`, `Hulk_Female` and `Thin_Female` match no vanilla `BodyTypeDef`
(WDI itself depends on Female Body Variants, `tiagocc0.FemaleBodyVariants`, which was not installed on the machine).

## Patch to write

A `PatchOperationReplace` on `FurDef[defName="ERN_RhyaethBody"]/bodyTypeGraphicPaths` pointing
Female, Male, Thin, Hulk, Fat and Child at `Pawn/ScalySkin/ScalySkin_<Type>`, Baby left as is.
Open questions: whether the ScalySkin textures are grey enough to take the skin colour tint like
Erin's; whether to use the `_Female` variants when a female body type exists (Female Body Variants
installed); how it sits with Rhyaeth Facial Animation (`lucius.rhyaethfa`).

## Duplicate check (1.a, 2026-10-30)

`Search-Workshop.sh -p 'ScalySkin|ERN_RhyaethBody' -i '*.xml'`, 9658 of 9660 folders read, 60 hits. Nothing
applies ScalySkin to Rhy'aeth. Only Erin's own `FurDefs.xml` names `ERN_RhyaethBody`.

Precedent for the technique: More Beautiful Bodies (3341372760), `1.5/Patches/FurDefsPatch.xml`, does the same
for the Saurid `FurDef` (`PatchOperationFindMod`, then `PatchOperationReplace` on
`/Defs/FurDef[defName="..."]/bodyTypeGraphicPaths/<Type>`, Baby pointed at the Child texture). It patches
Child and Baby only. Vanilla Races Expanded - Saurid (2880990495) ships its own `FurDefs_ScaleSkin.xml`.
