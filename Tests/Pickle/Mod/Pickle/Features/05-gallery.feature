# SHOTLIST (final draft 2, 2026-11-10, shootGallery; director pass by an Opus sub-agent, remarks kept below).
# Written before anything is played; a scenario that is not listed here is not written.
#
# STORY. One day at the Sanctuary of Nelim (mod SanctuaryBacklot, save "Nelims-tribe"). Nelim, the protagonist and in every
# image, welcomes a family of six Rhy'aeth who walked in from the north road at dawn (Erin's Rhy'aeth, bodies redrawn by
# this patch with the scaly textures of WDI's Realistic Bodies). The series follows the family through the Sanctuary:
# arrival at the torii, tea, flowers, the bridge, a quiet portrait, the evening on the terrace. Each image puts one body
# type in front (the others are company). Opening image: shot 1 (the torii, the first two guests). Closing image: shot 6
# (the whole family, the evening).
# Rhythm: each image sets its own hour of the same clear day (07:30, 10:00, 12:30, 15:00, 17:30, 20:00), "I set the
# hour to N" in each scenario, plus 60 ticks of settle; the light goes from cold dawn to warm dusk and lamps. Everyone
# keeps the same outfit all day. The guests are dressed light (tank tops, shorts, tribal wear) so the scaly bodies show.
# Guests are anonymous Rhy'aeth colonists created by the scenario ("a colonist 'X' of kind 'Colonist' exists" + NPT
# ColonistRace body, gender and gene steps): no NSB colonist, no NSB property changed, no owner validation needed.
# Included animals (rule 5 of sync-nsb-npt): none, the mod adds no animal. Cat and Duck below are decor animals of the
# save (anonymous fauna), shown from the front once (criterion c). Baby Rhy'aeth is out of the patch (Erin's own texture).
# Facings are N, E, S or W only (the game has no diagonal). Poses come from a job paused on the capture tick, never from
# a posed idle; steps that do not exist ("pours", "kneels", "leans on a rail") are replaced by "sits on the building",
# "carries the item", "faces" and a Goto/Wait job; a step that is missing is asked to NPT before the scenario is written.
#
# GUESTS (Rhy'aeth, smile, default mouth):
#   Aren  Male,   bronze scales  ERN_RhyaethBronzeScales, white HD hair, Apparel_BasicShirt rust #A0522D sleeveless look via
#         VAE_Apparel_TankTop, LTS_Shorts brown #5A3A20
#   Sael  Female, green scales   ERN_RhyaethGreenScales,  black HD hair, LTS_TribalWear ochre #C8963E
#   Brum  Fat,    black scales   ERN_RhyaethBlackScales,  white HD hair, VAE_Apparel_TankTop peach #F4A460, LTS_Shorts cream
#   Ysha  Thin,   blue scales    ERN_RhyaethBlueScales,   silver HD hair, VAE_Apparel_TankTop cream #E1D7BE, LTS_Shorts
#   Korr  Hulk,   white scales   ERN_RhyaethWhiteScales,  black HD hair, VAE_Apparel_TankTop rust #A0522D, LTS_Shorts
#   Pip   Child,  bronze scales  ERN_RhyaethBronzeScales, ginger HD hair, Apparel_BasicShirt mint #A8D5BA, LTS_Shorts
# Nelim: fixture defaults (her own face, Apparel_Pants, brown eyes), smile. Scale colours: bronze, green, black, blue, white.
# DepMap: wsl-deps.sanctuary.map (SanctuaryBacklot) + wsl-deps.rhyaeth.map of this mod (Erin.Rhyaeth,
# WDI.Realistic.Bodies, FemaleBodyVariants, GenesExpandedSkin, rooboid.hdhair.continued, VHE) + screenshotstudio, camerazoom,
# stagedecor. Every defName marked (verify) is checked in the Defs before its scenario is written.
#
# SHOTS (all story scenes; subtitle lines go to PUBLICATION.md "Gallery subtitles" at the end)
#
# 1 workshop-1-arrival | cloister, centre (178, 128), zoom 4.5 wide | 07:30, clear, settle 60 ticks
#   Subject/says: Nelim welcomes Aren and Sael at the torii; the Rhy'aeth arrive in their new scaly bodies.
#   Composition: wide but pulled in so both guests read at 268 px; torii and wall lanterns foreground left, guests
#     decentred right, Nelim left, long cold shadows. Guests face S toward the camera, Nelim faces E toward them.
#   Living: Nelim (smile), Aren (Male, bronze) mid-step on a Goto job, Sael (Female, green). Animals: none.
#   Decor (all removed after): TorchLamp x2 lit along the wall, Campfire lit beside the path, Plant_Daylily x3 fully grown
#     along the wall, a stack of Pemmican at Aren's feet (verify), sandstone path from the torii.
#   Moment: just before, they came down the north road; just after, Nelim bows and shows them in.
#   Obtained: "stands at" + "faces", Goto job for Aren, game paused on the capture tick.
#
# 2 workshop-2-tea | hut / tea-room, centre (140, 73), zoom 5.2 medium | 10:00, clear, settle 60 ticks
#   Subject/says: Brum (Fat, black scales) sits at the low table with a cup; the Fat body reads round and soft in black scales.
#   Composition: medium, table in the lower third, Brum decentred left facing S, Nelim right facing W toward him, cushions
#     and andon lamp behind, tatami foreground. Cat sits front left, faces S.
#   Living: Brum (smile), Nelim (smile) holding the teapot, Ysha (Thin, blue) and Korr (Hulk, white) arriving at the door
#     in the back (Goto jobs), Cat (animal, from the front). Brum bare-armed (tank top) so the body shows.
#   Decor: the hut's tatamis, low table, cushions, oil andon; PlantPot x2 with Plant_Rose by the door (verify), a Shelf with
#     a plant, a lit TorchLamp at the door. All removed after.
#   Moment: just before, Nelim set the cups; just after, Brum drinks. Obtained: "sits on the building" cushion cell,
#     "carries the item" cup (verify tea item), Nelim carries the teapot item, "faces", Goto jobs for the two arrivals.
#
# 3 workshop-3-flowers | flower-garden, centre (154, 110), zoom 7 medium | 12:30, clear, settle 60 ticks
#   Subject/says: Korr (Hulk, white) and Pip (Child, bronze) at the rose bed: the biggest and the smallest body together.
#   Composition: Korr centred-left in the middle ground facing E, Pip right foreground a cell nearer facing W toward
#     her, roses and daylilies filling the foreground, statue garden in the background; noon light, short shadows.
#   Living: Korr (smile), Pip (smile, carries RawBerries mid-offer), Nelim waters at the left edge (Goto/Wait job, smile).
#   Decor: Plant_Rose and Plant_Daylily x12 fully grown, a Stool, PlantPot x2, a lit TorchLamp (verify defNames).
#   Moment: just before, Pip found a rose; just after, Korr bends to it. Obtained: "stands at", "faces", "carries the
#     item", Goto job, plants "fully grown".
#
# 4 workshop-4-bridge | river-bridge, centre (135, 124), zoom 8.5 medium-wide | 15:00, clear, settle 60 ticks
#   Subject/says: Ysha (Thin, blue) pauses on the bridge; the Thin body reads slim against the planks.
#   Composition: bridge diagonal, Ysha foreground left facing E, Aren mid-ground crossing W on a Goto job, Nelim on the
#     bank waving (faces S), water bottom, warm afternoon light. Blue scales against brown planks (not the water).
#   Living: Ysha, Aren (Male, bronze), Nelim (smile), Duck x2 on the water (the Duck faces S once, criterion c).
#   Decor: a lantern on the bridge post (lit TorchLamp), reeds on the bank (verify), a crate with a bundle of Wood.
#   Moment: just before, Ysha stopped to watch the water; just after, Aren calls her over.
#   Obtained: "stands at", "faces", Goto job for Aren, Duck "faces" step.
#
# 5 workshop-5-portrait | statue-garden, centre (155, 99), zoom 5.5 medium-tight | 17:30, clear, settle 60 ticks
#   Subject/says: Sael (Female, green) looks up at a statue while Nelim points it out; green scales against warm stone.
#   Composition: Sael decentred left facing E, a statue right, Nelim half in frame at the left edge facing E, low warm
#     sun, long shadows, stone floor with a path of flagstones. Subject reads at 268 px: the green is the only strong
#     colour (ochre tribal wear is pale).
#   Living: Sael (smile), Nelim (smile). No animal.
#   Decor: a lit Campfire and a lit TorchLamp as light sources, PlantPot x2, a Stool (verify defNames); removed after.
#   Moment: just before, Nelim told the statue's story; just after, Sael walks on. Obtained: "faces", Goto job.
#
# 6 workshop-6-dusk | terrace, centre (196, 123), table cell (196, 121), zoom 6.8 wide | 20:00, dusk, settle 60 ticks
#   Subject/says: the whole family gathers for the evening meal: six body types, five scale colours, one family.
#   Composition: wide, the table across the middle; Brum and Korr seated left, Ysha standing right, Aren and Sael on the
#     far side, Pip on the floor at the front, Nelim at the end pouring; lamps lit left and right; guests sit or stand
#     facing S so the front of each body shows; zoom pulled in until the bodies read at 268 px.
#   Living: seven pawns, all smiling; Cat asleep under the table (animal from the side). Same outfits as the day.
#   Decor: the terrace's own cases; table with Meal_Fine and Beer (verify), a Campfire and two lit TorchLamp (no mains
#     power on the terrace), PlantPot x2; all removed after.
#   Moment: just before, the meal was served; just after, the toast. Obtained: "sits on the building", "faces", "carries
#     the item", lamps "is lit".
#
Feature: Workshop gallery (shootGallery, shotlist only, no scenario yet)
