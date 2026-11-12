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
# GUESTS (Rhy'aeth, smile, default mouth; shirt Apparel_BasicShirt dyed, Apparel_Pants brown rgb (90, 58, 32); hair colour by gene Hair_SnowWhite or Hair_LightPurple):
#   Aren  Male,   bronze ERN_RhyaethBronzeScales, Hair_SnowWhite,   Roo_HD_Hair_Undercut, shirt rust rgb (160, 82, 45)
#   Sael  Female, green  ERN_RhyaethGreenScales,  Hair_LightPurple, Roo_Royal_DragonHD,    shirt ochre rgb (200, 150, 62)
#   Brum  Fat,    black  ERN_RhyaethBlackScales,  Hair_SnowWhite,   ShavedMohawk,          shirt peach rgb (244, 164, 96)
#   Ysha  Thin,   blue   ERN_RhyaethBlueScales,   Hair_SnowWhite,   Roo_Royal_LongHD,      shirt cream rgb (225, 215, 190)
#   Korr  Hulk,   white  ERN_RhyaethWhiteScales,  Hair_SnowWhite,   VHE_BattleBraid,       shirt rust rgb (160, 82, 45)
#   Pip   Child,  bronze ERN_RhyaethBronzeScales, Hair_LightPurple, Roo_HD_Hair_Undercut,  shirt mint rgb (168, 213, 186)
# Nelim: fixture defaults (her own face, Apparel_Pants, brown eyes), hairstyle Roo_Royal_LongHD (GALERIE-COLONS.md), smile. Scale colours: bronze, green, black, blue, white.
# DepMap: wsl-deps.sanctuary.map (SanctuaryBacklot) + wsl-deps.rhyaeth.map of this mod (Erin.Rhyaeth,
# WDI.Realistic.Bodies, FemaleBodyVariants, GenesExpandedSkin, rooboid.hdhair.continued, VHE) + screenshotstudio, camerazoom,
# stagedecor. Every defName marked (verify) is checked in the Defs before its scenario is written.
#
# SHOTS (all story scenes; subtitle lines go to PUBLICATION.md "Gallery subtitles" at the end)
#
#   1. workshop-1-arrival | cloister, centre (178, 128), zoom 3.5 wide, tight enough for 268 px | 07:30, clear, settle 60 ticks
#         Subject/says: Nelim welcomes Aren and Sael at the torii; the Rhy'aeth arrive in their new scaly bodies.
#         Composition: wide but pulled in so both guests read at 268 px; torii and wall lanterns foreground left, guests
#           decentred right, Nelim left, long cold shadows. Guests face S toward the camera, Nelim faces E toward them.
#         Living: Nelim (smile), Aren (Male, bronze) mid-step on a Goto job, Sael (Female, green). Animals: none.
#         Decor (all removed after): TorchLamp x2 lit along the wall, Campfire lit beside the path, Plant_Daylily x3 fully grown
#           along the wall, a stack of Pemmican at Aren's feet (verify).
#         Moment: just before, they came down the north road; just after, Nelim bows and shows them in.
#         Obtained: "stands at" + "faces", Goto job for Aren, game paused on the capture tick.
#
#   2. workshop-2-tea | hut / tea-room, centre (140, 73), zoom 4 medium | 10:00, clear, settle 60 ticks
#         Subject/says: Brum (Fat, black scales) sits at the low table with a cup; the Fat body reads round and soft in black scales.
#         Composition: medium, table in the lower third, Brum decentred left facing S, Nelim right facing W toward him, cushions
#           and andon lamp behind, tatami foreground. Cat sits front left, faces S.
#         Living: Brum (smile), Nelim (smile) holding PsychiteTea, Ysha (Thin, blue) and Korr (Hulk, white) arriving at the door
#           in the back (Goto jobs), Cat (animal, from the front). Brum bare-armed (tank top) so the body shows.
#         Decor: the hut's tatamis, low table, cushions, oil andon; PlantPot x2 with Plant_Rose by the door (verify), a Shelf with
#           a plant, a lit TorchLamp at the door. All removed after.
#         Moment: just before, Nelim set the cups; just after, Brum drinks. Obtained: "sits on the building" cushion cell,
#           "carries the item" PsychiteTea for Brum and for Nelim (the in-game tea), "faces", Goto jobs for the two arrivals.
#
#   3. workshop-3-flowers | flower-garden, centre (154, 110), zoom 4.5 medium | 12:30, clear, settle 60 ticks
#         Subject/says: Korr (Hulk, white) and Pip (Child, bronze) at the rose bed: the biggest and the smallest body together.
#         Composition: Korr centred-left in the middle ground facing E, Pip right foreground a cell nearer facing W toward
#           her, roses and daylilies filling the foreground, statue garden in the background; noon light, short shadows.
#         Living: Korr (smile), Pip (smile, carries RawBerries mid-offer), Nelim walks the left edge carrying RawBerries (forced walk, smile).
#         Decor: Plant_Rose and Plant_Daylily x12 fully grown, a Stool, PlantPot x2, a lit TorchLamp (verify defNames).
#         Moment: just before, Pip found a rose; just after, Korr bends to it. Obtained: "stands at", "faces", "carries the
#           item", Goto job, plants "fully grown".
#
#   4. workshop-4-bridge | river-bridge, centre (135, 124), zoom 5 medium-wide | 15:00, clear, settle 60 ticks
#         Subject/says: Ysha (Thin, blue) pauses on the bridge; the Thin body reads slim against the planks.
#         Composition: bridge diagonal, Ysha foreground left facing E, Aren mid-ground crossing W on a Goto job, Nelim on the
#           bank waving (faces S), water bottom, warm afternoon light. Blue scales against brown planks (not the water).
#         Living: Ysha, Aren (Male, bronze), Nelim (smile), Duck x2 on the water (the Duck faces S once, criterion c).
#         Decor: a lantern on the bridge post (lit TorchLamp), reeds on the bank (verify), a crate with WoodLog (verify).
#         Moment: just before, Ysha stopped to watch the water; just after, Aren calls her over.
#         Obtained: "stands at", "faces", Goto job for Aren, Duck "faces" step.
#
#   5. workshop-5-portrait | statue-garden, centre (155, 99), zoom 3.5 tight | 17:30, clear, settle 60 ticks
#         Subject/says: Sael (Female, green) looks up at a statue while Nelim points it out; green scales against warm stone.
#         Composition: Sael decentred left facing E, a statue right, Nelim half in frame at the left edge facing E, low warm
#           sun, long shadows, stone floor with a path of flagstones. Subject reads at 268 px: the green is the only strong
#           colour (ochre tribal wear is pale).
#         Living: Sael (smile, mid-stride on a forced walk toward the statue), Nelim (smile). No animal.
#         Decor: a lit Campfire and a lit TorchLamp as light sources, PlantPot x2, a Stool (verify defNames); removed after.
#         Moment: just before, Nelim told the statue's story; just after, Sael walks on. Obtained: "faces", Goto job.
#
#   6. workshop-6-dusk | terrace, centre (196, 123), table cell (196, 121), zoom 5 wide | 20:00, dusk, settle 60 ticks
#         Subject/says: the whole family gathers for the evening meal: six body types, five scale colours, one family.
#         Composition: wide, the table across the middle; Brum and Korr seated left, Ysha standing right, Aren and Sael on the
#           far side, Pip on the floor at the front, Nelim at the end pouring; lamps lit left and right; guests sit or stand
#           facing S so the front of each body shows; zoom pulled in until the bodies read at 268 px.
#         Living: seven pawns, all smiling; Cat asleep under the table (animal from the side). Same outfits as the day.
#         Decor: the terrace's own cases; table with MealFine and Beer (verify), a Campfire and two lit TorchLamp (no mains
#           power on the terrace), PlantPot x2; all removed after.
#         Criterion j assumed weak (-0.5): seven pawns at zoom 5 are small at 268 px; the closing group is kept for the story.
#         Moment: just before, the meal was served; just after, the toast. Obtained: "sits on the building", "faces", "carries
#           the item", lamps "is lit".
#
@review @en-only @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools @requires:nelim.pickletools.camerazoom
Feature: Workshop gallery, one day at the Sanctuary

  Scenario: 1 - workshop-1-arrival (cloister, 07:30)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 7
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Aren" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Aren" gender is male
    And Nelim's Pickle Tools: "Aren" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Aren" body type is Male
    And Nelim's Pickle Tools: "Aren" has the gene "ERN_RhyaethBronzeScales"
    And Nelim's Pickle Tools: "Aren" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Aren" hairstyle is "Roo_HD_Hair_Undercut"
    And Nelim's Pickle Tools: "Aren" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Sael" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Sael" gender is female
    And Nelim's Pickle Tools: "Sael" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Sael" body type is Female
    And Nelim's Pickle Tools: "Sael" has the gene "ERN_RhyaethGreenScales"
    And Nelim's Pickle Tools: "Sael" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Sael" hairstyle is "Roo_Royal_DragonHD"
    And Nelim's Pickle Tools: "Sael" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Aren" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Aren" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Sael" wears "Apparel_BasicShirt" dyed rgb (200, 150, 62)
    And Nelim's Pickle Tools: "Sael" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (172, 128)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (172, 128) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (184, 128)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (184, 128) is lit
    And Nelim's Pickle Tools: I place the decor "Campfire" at (175, 127)
    And Nelim's Pickle Tools: the decor "Campfire" at (175, 127) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (173, 130) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (175, 130) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (177, 130) fully grown
    And Nelim's Pickle Tools: 5 of the item "Pemmican" are spawned at (180, 127)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (176, 128) facing East
    And Nelim's Pickle Tools: "Sael" stands at (179, 128) facing South
    And Nelim's Pickle Tools: "Aren" stands at (181, 128) facing South
    And Nelim's Pickle Tools: "Aren" is forced to walk to (181, 129)
    And Nelim's Pickle Tools: I frame the cell (178, 128) at zoom 3.5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-1-arrival"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  Scenario: 2 - workshop-2-tea (hut, 10:00)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 10
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Brum" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Brum" gender is male
    And Nelim's Pickle Tools: "Brum" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Brum" body type is Fat
    And Nelim's Pickle Tools: "Brum" has the gene "ERN_RhyaethBlackScales"
    And Nelim's Pickle Tools: "Brum" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Brum" hairstyle is "ShavedMohawk"
    And Nelim's Pickle Tools: "Brum" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Ysha" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ysha" gender is female
    And Nelim's Pickle Tools: "Ysha" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Ysha" body type is Thin
    And Nelim's Pickle Tools: "Ysha" has the gene "ERN_RhyaethBlueScales"
    And Nelim's Pickle Tools: "Ysha" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Ysha" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Ysha" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Korr" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Korr" gender is female
    And Nelim's Pickle Tools: "Korr" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Korr" body type is Hulk
    And Nelim's Pickle Tools: "Korr" has the gene "ERN_RhyaethWhiteScales"
    And Nelim's Pickle Tools: "Korr" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Korr" hairstyle is "VHE_BattleBraid"
    And Nelim's Pickle Tools: "Korr" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Brum" wears "Apparel_BasicShirt" dyed rgb (244, 164, 96)
    And Nelim's Pickle Tools: "Brum" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_BasicShirt" dyed rgb (225, 215, 190)
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Korr" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Korr" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "Stool" at (140, 73)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (138, 74)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (138, 74) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (142, 75) fully grown
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (143, 75)
    And Nelim's Pickle Tools: I place the decor "Shelf" at (137, 72)
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Mimi" is spawned at (139, 71)
    And Nelim's Pickle Tools: the animal "Mimi" stands at (139, 71) facing South
    And Nelim's Pickle Tools: "Brum" sits on the building "Stool" at (140, 73)
    And Nelim's Pickle Tools: "Brum" carries the item "PsychiteTea"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (142, 73) facing West
    And Nelim's Pickle Tools: "Nelim" carries the item "PsychiteTea"
    And Nelim's Pickle Tools: "Ysha" stands at (143, 76) facing South
    And Nelim's Pickle Tools: "Ysha" is forced to walk to (141, 75)
    And Nelim's Pickle Tools: "Korr" stands at (145, 76) facing South
    And Nelim's Pickle Tools: "Korr" is forced to walk to (144, 75)
    And Nelim's Pickle Tools: I frame the cell (140, 73) at zoom 4
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-2-tea"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  Scenario: 3 - workshop-3-flowers (flower-garden, 12:30)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Korr" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Korr" gender is female
    And Nelim's Pickle Tools: "Korr" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Korr" body type is Hulk
    And Nelim's Pickle Tools: "Korr" has the gene "ERN_RhyaethWhiteScales"
    And Nelim's Pickle Tools: "Korr" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Korr" hairstyle is "VHE_BattleBraid"
    And Nelim's Pickle Tools: "Korr" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Pip" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Pip" gender is male
    And Nelim's Pickle Tools: "Pip" xenotype is "ERN_Rhyaeth"
    And "Pip" is 8 years old
    And Nelim's Pickle Tools: "Pip" body type is Child
    And Nelim's Pickle Tools: "Pip" has the gene "ERN_RhyaethBronzeScales"
    And Nelim's Pickle Tools: "Pip" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Pip" hairstyle is "Roo_HD_Hair_Undercut"
    And Nelim's Pickle Tools: "Pip" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Korr" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Korr" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Pip" wears "Apparel_KidShirt" dyed rgb (168, 213, 186)
    And Nelim's Pickle Tools: "Pip" wears "Apparel_KidPants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (150, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (150, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (151, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (152, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (152, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (153, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (154, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (155, 111) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (155, 109) fully grown
    And Nelim's Pickle Tools: I place the decor "Stool" at (157, 110)
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (158, 111)
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (158, 109)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (159, 110)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (159, 110) is lit
    And Nelim's Pickle Tools: "Korr" stands at (153, 110) facing East
    And Nelim's Pickle Tools: "Pip" stands at (155, 110) facing West
    And Nelim's Pickle Tools: "Pip" carries the item "RawBerries"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (150, 110) facing East
    And Nelim's Pickle Tools: "Nelim" carries the item "RawBerries"
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (151, 110)
    And Nelim's Pickle Tools: I frame the cell (154, 110) at zoom 4.5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-3-flowers"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  Scenario: 4 - workshop-4-bridge (river-bridge, 15:00)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Ysha" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ysha" gender is female
    And Nelim's Pickle Tools: "Ysha" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Ysha" body type is Thin
    And Nelim's Pickle Tools: "Ysha" has the gene "ERN_RhyaethBlueScales"
    And Nelim's Pickle Tools: "Ysha" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Ysha" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Ysha" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Aren" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Aren" gender is male
    And Nelim's Pickle Tools: "Aren" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Aren" body type is Male
    And Nelim's Pickle Tools: "Aren" has the gene "ERN_RhyaethBronzeScales"
    And Nelim's Pickle Tools: "Aren" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Aren" hairstyle is "Roo_HD_Hair_Undercut"
    And Nelim's Pickle Tools: "Aren" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_BasicShirt" dyed rgb (225, 215, 190)
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Aren" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Aren" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (137, 125)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (137, 125) is lit
    And Nelim's Pickle Tools: I place the decor "WoodLog" at (133, 123)
    And Nelim's Pickle Tools: an adult animal of kind "Duck" named "Coin" is spawned at (133, 124)
    And Nelim's Pickle Tools: the animal "Coin" stands at (133, 124) facing South
    And Nelim's Pickle Tools: "Ysha" stands at (134, 124) facing East
    And Nelim's Pickle Tools: "Aren" stands at (137, 124) facing West
    And Nelim's Pickle Tools: "Aren" is forced to walk to (135, 124)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (131, 124) facing South
    And Nelim's Pickle Tools: I frame the cell (135, 124) at zoom 5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-4-bridge"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  Scenario: 5 - workshop-5-portrait (statue-garden, 17:30)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Sael" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Sael" gender is female
    And Nelim's Pickle Tools: "Sael" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Sael" body type is Female
    And Nelim's Pickle Tools: "Sael" has the gene "ERN_RhyaethGreenScales"
    And Nelim's Pickle Tools: "Sael" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Sael" hairstyle is "Roo_Royal_DragonHD"
    And Nelim's Pickle Tools: "Sael" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Sael" wears "Apparel_BasicShirt" dyed rgb (200, 150, 62)
    And Nelim's Pickle Tools: "Sael" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "Campfire" at (158, 100)
    And Nelim's Pickle Tools: the decor "Campfire" at (158, 100) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (152, 98)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (152, 98) is lit
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (157, 98)
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (153, 101)
    And Nelim's Pickle Tools: I place the decor "Stool" at (156, 101)
    And Nelim's Pickle Tools: "Sael" stands at (154, 99) facing East
    And Nelim's Pickle Tools: "Sael" is forced to walk to (154, 100)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (153, 99) facing East
    And Nelim's Pickle Tools: I frame the cell (155, 99) at zoom 3.5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-5-portrait"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  Scenario: 6 - workshop-6-dusk (terrace, 20:00)
    Given the save "Nelims-tribe-decor-mods" is loaded
    And game speed is paused
    And I close all dialogs
    And I set the hour to 20
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: a colonist "Aren" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Aren" gender is male
    And Nelim's Pickle Tools: "Aren" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Aren" body type is Male
    And Nelim's Pickle Tools: "Aren" has the gene "ERN_RhyaethBronzeScales"
    And Nelim's Pickle Tools: "Aren" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Aren" hairstyle is "Roo_HD_Hair_Undercut"
    And Nelim's Pickle Tools: "Aren" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Sael" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Sael" gender is female
    And Nelim's Pickle Tools: "Sael" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Sael" body type is Female
    And Nelim's Pickle Tools: "Sael" has the gene "ERN_RhyaethGreenScales"
    And Nelim's Pickle Tools: "Sael" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Sael" hairstyle is "Roo_Royal_DragonHD"
    And Nelim's Pickle Tools: "Sael" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Brum" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Brum" gender is male
    And Nelim's Pickle Tools: "Brum" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Brum" body type is Fat
    And Nelim's Pickle Tools: "Brum" has the gene "ERN_RhyaethBlackScales"
    And Nelim's Pickle Tools: "Brum" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Brum" hairstyle is "ShavedMohawk"
    And Nelim's Pickle Tools: "Brum" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Ysha" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ysha" gender is female
    And Nelim's Pickle Tools: "Ysha" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Ysha" body type is Thin
    And Nelim's Pickle Tools: "Ysha" has the gene "ERN_RhyaethBlueScales"
    And Nelim's Pickle Tools: "Ysha" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Ysha" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Ysha" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Korr" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Korr" gender is female
    And Nelim's Pickle Tools: "Korr" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Korr" body type is Hulk
    And Nelim's Pickle Tools: "Korr" has the gene "ERN_RhyaethWhiteScales"
    And Nelim's Pickle Tools: "Korr" has the gene "Hair_SnowWhite"
    And Nelim's Pickle Tools: "Korr" hairstyle is "VHE_BattleBraid"
    And Nelim's Pickle Tools: "Korr" hair colour is taken from its genes
    And Nelim's Pickle Tools: a colonist "Pip" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Pip" gender is male
    And Nelim's Pickle Tools: "Pip" xenotype is "ERN_Rhyaeth"
    And "Pip" is 8 years old
    And Nelim's Pickle Tools: "Pip" body type is Child
    And Nelim's Pickle Tools: "Pip" has the gene "ERN_RhyaethBronzeScales"
    And Nelim's Pickle Tools: "Pip" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Pip" hairstyle is "Roo_HD_Hair_Undercut"
    And Nelim's Pickle Tools: "Pip" hair colour is taken from its genes
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Aren" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Aren" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Sael" wears "Apparel_BasicShirt" dyed rgb (200, 150, 62)
    And Nelim's Pickle Tools: "Sael" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Brum" wears "Apparel_BasicShirt" dyed rgb (244, 164, 96)
    And Nelim's Pickle Tools: "Brum" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_BasicShirt" dyed rgb (225, 215, 190)
    And Nelim's Pickle Tools: "Ysha" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Korr" wears "Apparel_BasicShirt" dyed rgb (160, 82, 45)
    And Nelim's Pickle Tools: "Korr" wears "Apparel_Pants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Pip" wears "Apparel_KidShirt" dyed rgb (168, 213, 186)
    And Nelim's Pickle Tools: "Pip" wears "Apparel_KidPants" dyed rgb (90, 58, 32)
    And Nelim's Pickle Tools: I place the decor "Table2x2c" at (196, 121)
    And Nelim's Pickle Tools: I place the decor "Stool" at (194, 123)
    And Nelim's Pickle Tools: I place the decor "Stool" at (194, 122)
    And Nelim's Pickle Tools: I place the decor "Stool" at (198, 121)
    And Nelim's Pickle Tools: I place the decor "Stool" at (198, 122)
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 119)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 119) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 123)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 123) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (200, 123)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (200, 123) is lit
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (200, 119)
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (193, 124)
    And Nelim's Pickle Tools: 2 of the item "MealFine" are spawned at (196, 121)
    And Nelim's Pickle Tools: 2 of the item "Beer" are spawned at (197, 122)
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Mimi" is spawned at (196, 123)
    And Nelim's Pickle Tools: the animal "Mimi" stands at (196, 123) facing South
    And Nelim's Pickle Tools: "Brum" sits on the building "Stool" at (194, 123)
    And Nelim's Pickle Tools: "Korr" sits on the building "Stool" at (194, 122)
    And Nelim's Pickle Tools: "Aren" sits on the building "Stool" at (198, 121)
    And Nelim's Pickle Tools: "Sael" sits on the building "Stool" at (198, 122)
    And Nelim's Pickle Tools: "Pip" stands at (196, 124) facing South
    And Nelim's Pickle Tools: "Ysha" stands at (200, 121) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" stands at (195, 120) facing East
    And Nelim's Pickle Tools: "Nelim" carries the item "Beer"
    And Nelim's Pickle Tools: I frame the cell (196, 123) at zoom 5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" facial expression "normal" is held
    And I take a screenshot "workshop-6-dusk"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged
