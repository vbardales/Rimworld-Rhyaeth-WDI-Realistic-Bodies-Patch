@review @requires:nelim.pickletools.colonistrace
Feature: A Rhy'aeth colonist wears the scaly body of WDI's Realistic Bodies

  # Rhy'aeth is a Biotech xenotype. The colonist is built from the test-colony fixture (Jet): xenotype ERN_Rhyaeth, then the
  # gender, then the body type (the genes choose a body type, so the step that fixes it comes last). The assertions say the
  # state the picture shows; whether the scales are WDI's is read by eye on the capture. A green capture proves only that it
  # was taken. The Baby body (Erin's swaddled-baby texture, left unpatched) is not photographed here.
  # The fur path is asserted by NPT's ColonistRace step (tolerates a direction or _Female suffix, so Thin female may read ScalySkin_Thin_Female).
  # NOT PLAYED YET.

  Scenario Outline: a <gender> Rhy'aeth with the <type> body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: "Jet" gender is <gender>
    And Nelim's Pickle Tools: "Jet" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Jet" body type is <type>
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Jet" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Jet" holds the gene "ERN_RhyaethBody"
    And Nelim's Pickle Tools: the fur nodes of "Jet" are logged
    And Nelim's Pickle Tools: the fur of "Jet" is drawn from "Pawn/ScalySkin/ScalySkin_<type>"
    And Nelim's Pickle Tools: "Jet" has body type <type>
    When I take a screenshot "rhyaeth-<gender>-<type>"
    Then no errors were logged

    Examples:
      | gender | type   |
      | male   | Male   |
      | female | Female |
      | male   | Thin   |
      | female | Thin   |
      | male   | Fat    |
      | female | Fat    |
      | male   | Hulk   |
      | female | Hulk   |

  Scenario: a Rhy'aeth child with the Child body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And "Jet" is 8 years old
    And Nelim's Pickle Tools: "Jet" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Jet" body type is Child
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Jet" has xenotype "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Jet" is at the Child stage of life
    And Nelim's Pickle Tools: the fur nodes of "Jet" are logged
    And Nelim's Pickle Tools: the fur of "Jet" is drawn from "Pawn/ScalySkin/ScalySkin_Child"
    And Nelim's Pickle Tools: "Jet" has body type Child
    When I take a screenshot "rhyaeth-child"
    Then no errors were logged

  Scenario Outline: the <colour> scales tint the scaly body
    Given the save "test-colony" is loaded
    And game speed is paused
    And I close all dialogs
    And Nelim's Pickle Tools: "Jet" gender is male
    And Nelim's Pickle Tools: "Jet" xenotype is "ERN_Rhyaeth"
    And Nelim's Pickle Tools: "Jet" body type is Male
    And Nelim's Pickle Tools: "Jet" has the gene "ERN_Rhyaeth<colour>Scales"
    And I wait 5 ticks
    And game speed is paused
    Then Nelim's Pickle Tools: "Jet" holds the gene "ERN_Rhyaeth<colour>Scales"
    And Nelim's Pickle Tools: the fur of "Jet" is drawn from "Pawn/ScalySkin/ScalySkin_Male"
    When I take a screenshot "rhyaeth-scales-<colour>"
    Then no errors were logged

    Examples:
      | colour |
      | Green  |
      | Bronze |
      | White  |
