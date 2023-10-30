{ config, ... }:

{
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  system.defaults.NSGlobalDomain = {
    # Speed up key repeat
    InitialKeyRepeat = 14;
    KeyRepeat = 1;
    # In general, have Apple not mess with our text
    NSAutomaticCapitalizationEnabled = false;
    NSAutomaticDashSubstitutionEnabled = false;
    NSAutomaticPeriodSubstitutionEnabled = false;
    NSAutomaticQuoteSubstitutionEnabled = null;
    NSAutomaticSpellingCorrectionEnabled = false;
  };
}
