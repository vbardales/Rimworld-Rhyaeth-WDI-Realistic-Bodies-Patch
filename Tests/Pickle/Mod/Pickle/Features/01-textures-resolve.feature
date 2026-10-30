@requires:nelim.pickletools.textureowner
Feature: The ScalySkin textures the patch points at are shipped by WDI's Realistic Bodies

  # The patch writes Pawn/ScalySkin/ScalySkin_<Type> into FurDef ERN_RhyaethBody. A typo, or a texture WDI renames, would
  # leave the fur with no graphic: the game logs "Failed to find any textures" and draws nothing. This checks the six paths
  # resolve to the running mod WDI.Realistic.Bodies, in the south orientation (the others ship beside it).

  Scenario Outline: the <type> body texture is answered by WDI's Realistic Bodies
    Given the save "test-colony" is loaded
    Then Nelim's Pickle Tools: the texture "Pawn/ScalySkin/ScalySkin_<type>_south" is shipped by at least 1 running mod
    And Nelim's Pickle Tools: the texture "Pawn/ScalySkin/ScalySkin_<type>_south" is answered by the mod "WDI.Realistic.Bodies"

    Examples:
      | type   |
      | Male   |
      | Female |
      | Thin   |
      | Fat    |
      | Hulk   |
      | Child  |
