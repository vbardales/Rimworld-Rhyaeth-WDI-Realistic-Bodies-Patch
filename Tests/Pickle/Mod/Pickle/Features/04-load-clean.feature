@requires:nelim.pickletools.loadaudit
Feature: The patch loads cleanly

  # 8.i: the game log holds nothing wrong that comes from the mod. The mod has no assembly and no def of its own, so the
  # second step watches the texts a bad patch would leave: a ScalySkin path that no running mod ships ("Failed to find any
  # textures at ...ScalySkin...") or a Replace whose xpath no longer matches ("Patch operation ... failed", naming the FurDef).
  Scenario: nothing in the log comes from the patch
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: the game has finished starting
    Then Nelim's Pickle Tools: the load of the mod "nelim.rhyaethwdirealisticbodiespatch" is clean, and no warning or error names "ScalySkin"
    And Nelim's Pickle Tools: the load of the mod "nelim.rhyaethwdirealisticbodiespatch" is clean, and no warning or error names "ERN_RhyaethBody"
