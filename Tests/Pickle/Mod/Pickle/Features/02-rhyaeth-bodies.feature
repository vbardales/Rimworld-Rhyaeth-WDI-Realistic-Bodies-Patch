@review @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.clickdiagnostics
Feature: A Rhy'aeth colonist wears the scaly body of WDI's Realistic Bodies

  # Rhy'aeth is a Biotech xenotype. The colonist is built from the test-colony fixture (Jet): xenotype ERN_Rhyaeth, then the
  # gender, then the body type (the genes choose a body type, so the step that fixes it comes last). The assertions say the
  # state the picture shows; whether the scales are WDI's is read by eye on the capture. A green capture proves only that it
  # was taken. The Baby body (Erin's swaddled-baby texture, left unpatched) is not photographed here.
  # The fur path is asserted by NPT's ColonistRace step (tolerates a direction or _Female suffix, so Thin female may read ScalySkin_Thin_Female).
  # Scale colours: the drawn colour can differ a little from the def value (randomBrightnessFactor 0.18, read of NPT); the expected rgb is the def value, read the failure line before changing it.
  # Captures: the camera is centred on Jet at root size 3 (SimpleCameraSetting keeps the asked size; the game alone stops at 11). First run framed nothing: the whole map, Jet unseen.
  # Shirtless and naked (Virginie, 2026-11-02): a new colonist spawns with its default apparel (the pale cyan torso); body type first, then the undress step, then the loose garments are cleared.
  # Body only: wings and tail genes removed so the WDI body shows (Virginie, 2026-11-02: wings and tail hid it); the body type step stays after the removals (the game re-picks a body type when genes change).
  # Look validated by Virginie 2026-11-02 (NSB profiles, Docs/CELESTE-PROFIL.md and IORI-PROFIL.md): female = Celeste (skin GES_Skin_SummerSky, hair gene Hair_LightPurple, hairstyle Roo_Royal_DragonHD), male = Iori (GES_Skin_Burgundy, Hair_SnowWhite, VHE_BattleBraid). Only skin, hair colour and hairstyle so far: eyes, horns, ears, face parts and clothes are still proposals or not taken. Outline only: the child and scale-colour scenarios keep the plain Rhy.
  # The colonist "Rhy" is created by step (kind Colonist, idle, no job, nothing in the hands): Jet of the fixture carried a rock in the first zoomed capture (Virginie, 2026-11-02). Studio steps hide the UI (NSB recipe).

  Scenario Outline: a <gender> Rhy'aeth with the <type> body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is <gender>
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" body type is <type>
    And Nelim's Pickle Tools: "Rhy" has the gene "<skin>"
    And Nelim's Pickle Tools: "Rhy" has the gene "<hairgene>"
    And Nelim's Pickle Tools: "Rhy" hairstyle is "<hairstyle>"
    And Nelim's Pickle Tools: "Rhy" hair colour is taken from its genes
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur nodes of "Rhy" are logged
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_<type>"
    And Nelim's Pickle Tools: "Rhy" has body type <type>
    And Nelim's Pickle Tools: "Rhy" faces South
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "rhyaeth-<gender>-<type>"
    Then no errors were logged

    Examples:
      | gender | type   | skin               | hairgene         | hairstyle          |
      | male   | Male   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Female | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Thin   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Thin   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Fat    | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Fat    | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Hulk   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Hulk   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |

  Scenario Outline: a <gender> Rhy'aeth shown body only with the <type> body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is <gender>
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethWings"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Simple"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spade"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spiked"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Frilled"
    And Nelim's Pickle Tools: "Rhy" body type is <type>
    And Nelim's Pickle Tools: "Rhy" has the gene "<skin>"
    And Nelim's Pickle Tools: "Rhy" has the gene "<hairgene>"
    And Nelim's Pickle Tools: "Rhy" hairstyle is "<hairstyle>"
    And Nelim's Pickle Tools: "Rhy" hair colour is taken from its genes
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur nodes of "Rhy" are logged
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_<type>"
    And Nelim's Pickle Tools: "Rhy" has body type <type>
    And Nelim's Pickle Tools: "Rhy" faces South
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "rhyaeth-bodyonly-<gender>-<type>"
    Then no errors were logged

    Examples:
      | gender | type   | skin               | hairgene         | hairstyle          |
      | male   | Male   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Female | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Thin   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Thin   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Fat    | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Fat    | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Hulk   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Hulk   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |

  Scenario Outline: a <gender> Rhy'aeth shown shirtless with the <type> body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is <gender>
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethWings"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Simple"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spade"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spiked"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Frilled"
    And Nelim's Pickle Tools: "Rhy" body type is <type>
    And Nelim's Pickle Tools: "Rhy" has the gene "<skin>"
    And Nelim's Pickle Tools: "Rhy" has the gene "<hairgene>"
    And Nelim's Pickle Tools: "Rhy" hairstyle is "<hairstyle>"
    And Nelim's Pickle Tools: "Rhy" hair colour is taken from its genes
    And Nelim's Pickle Tools: "Rhy" takes off the garments covering "Torso"
    And Nelim's Pickle Tools: the loose things within 3 cells of "Rhy" are removed
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur nodes of "Rhy" are logged
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_<type>"
    And Nelim's Pickle Tools: "Rhy" has body type <type>
    And Nelim's Pickle Tools: "Rhy" faces South
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "rhyaeth-shirtless-<gender>-<type>"
    Then no errors were logged

    Examples:
      | gender | type   | skin               | hairgene         | hairstyle          |
      | male   | Male   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Female | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Thin   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Thin   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Fat    | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Fat    | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Hulk   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Hulk   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |

  Scenario Outline: a <gender> Rhy'aeth shown naked with the <type> body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is <gender>
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethWings"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Simple"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spade"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spiked"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Frilled"
    And Nelim's Pickle Tools: "Rhy" body type is <type>
    And Nelim's Pickle Tools: "Rhy" has the gene "<skin>"
    And Nelim's Pickle Tools: "Rhy" has the gene "<hairgene>"
    And Nelim's Pickle Tools: "Rhy" hairstyle is "<hairstyle>"
    And Nelim's Pickle Tools: "Rhy" hair colour is taken from its genes
    And Nelim's Pickle Tools: "Rhy" is undressed
    And Nelim's Pickle Tools: the loose things within 3 cells of "Rhy" are removed
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur nodes of "Rhy" are logged
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_<type>"
    And Nelim's Pickle Tools: "Rhy" has body type <type>
    And Nelim's Pickle Tools: "Rhy" faces South
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "rhyaeth-naked-<gender>-<type>"
    Then no errors were logged

    Examples:
      | gender | type   | skin               | hairgene         | hairstyle          |
      | male   | Male   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Female | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Thin   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Thin   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Fat    | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Fat    | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |
      | male   | Hulk   | GES_Skin_Burgundy  | Hair_SnowWhite   | VHE_BattleBraid    |
      | female | Hulk   | GES_Skin_SummerSky | Hair_LightPurple | Roo_Royal_DragonHD |

  # Virginie, 2026-11-02: one capture of the female Hulk, naked, from the front, the back and the side (North = back, East = profile).
  Scenario Outline: the Hulk female turntable seen from <facing>
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is female
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethWings"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Simple"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spade"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Spiked"
    And Nelim's Pickle Tools: "Rhy" loses the gene "ERN_RhyaethTail_Frilled"
    And Nelim's Pickle Tools: "Rhy" body type is Hulk
    And Nelim's Pickle Tools: "Rhy" has the gene "GES_Skin_SummerSky"
    And Nelim's Pickle Tools: "Rhy" has the gene "Hair_LightPurple"
    And Nelim's Pickle Tools: "Rhy" hairstyle is "Roo_Royal_DragonHD"
    And Nelim's Pickle Tools: "Rhy" hair colour is taken from its genes
    And Nelim's Pickle Tools: "Rhy" is undressed
    And Nelim's Pickle Tools: the loose things within 3 cells of "Rhy" are removed
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_Hulk"
    And Nelim's Pickle Tools: "Rhy" has body type Hulk
    And Nelim's Pickle Tools: "Rhy" faces <facing>
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "rhyaeth-hulk-female-<facing>"
    Then no errors were logged

    Examples:
      | facing |
      | South  |
      | North  |
      | East   |

  Scenario: a Rhy'aeth child with the Child body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And "Rhy" is 8 years old
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" body type is Child
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" is at the Child stage of life
    And Nelim's Pickle Tools: the fur nodes of "Rhy" are logged
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_Child"
    And Nelim's Pickle Tools: "Rhy" has body type Child
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And I take a screenshot "rhyaeth-child"
    Then no errors were logged

  Scenario Outline: the <colour> scales tint the scaly body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: a colonist "Rhy" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Rhy" gender is male
    And Nelim's Pickle Tools: "Rhy" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Rhy" body type is Male
    And Nelim's Pickle Tools: "Rhy" skin colour override is cleared
    And Nelim's Pickle Tools: "Rhy" has the gene "ERN_Rhyaeth<colour>Scales"
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Rhy" holds the gene "ERN_Rhyaeth<colour>Scales"
    And Nelim's Pickle Tools: the fur of "Rhy" is drawn from "Pawn/ScalySkin/ScalySkin_Male"
    And Nelim's Pickle Tools: "Rhy" skin colour reads rgb (<r>, <g>, <b>)
    When Nelim's Pickle Tools: the camera is centered on "Rhy" at root size 3
    And I take a screenshot "rhyaeth-scales-<colour>"
    Then no errors were logged

    Examples:
      | colour | r   | g   | b   |
      | Green  | 50  | 125 | 50  |
      | Bronze | 140 | 120 | 80  |
      | White  | 235 | 235 | 235 |
