@requires:nelim.pickletools.colonistrace
Feature: The patch has no settings page

  # settings_audit is not_applicable: the mod is one XML patch, no ModSettings, no MainButtonDef. This checks in game that
  # the Mod options list holds no entry for it, so no empty page exists.

  Scenario: the Mod options list has no page for the patch
    Given the save "test-colony" is loaded
    Then Nelim's Pickle Tools: the mod options page of the mod "nelim.rhyaethwdirealisticbodiespatch" does not exist
