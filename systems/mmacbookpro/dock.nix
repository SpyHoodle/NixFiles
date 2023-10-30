{ config, pkgs, ... }:

{
  system.defaults = {
    dock = {
      # Don't show recent applications
      show-recents = false;
      # Set the dock size
      tilesize = 55;
      # Bottom right hot corner - Quick Nnote
      wvous-br-corner = 14;
      # Disable these hot corners
      wvous-bl-corner = 1;
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
    };
  };

  # Set the applications and folders on the dock
  local.dock.entries = [
    # Applications
    { path = "/System/Applications/Launchpad.app/"; }
    { path = "/Applications/Things3.app/"; }
    { path = "/Applications/RustRover.app/"; }
    { path = "/Applications/PyCharm.app/"; }
    { path = "/Applications/iTerm.app/"; }
    { path = "/Applications/Obsidian.app/"; }
    { path = "/Applications/Tower.app/"; }
    { path = "/Applications/Sketch.app/"; }
    { path = "/System/Volumes/Preboot/Cryptexes/App/System/Applications/Safari.app"; }
    { path = "/System/Applications/Calendar.app/"; }
    { path = "/System/Applications/Notes.app/"; }
    { path = "/System/Applications/Freeform.app/"; }
    { path = "/System/Applications/FindMy.app/"; }
    { path = "/System/Applications/Music.app/"; }
    { path = "/System/Applications/Mail.app/"; }
    { path = "/System/Applications/Messages.app/"; }
    { path = "/System/Applications/FaceTime.app/"; }
    { path = "/Applications/Element.app/"; }

    # Folders
    {
      path = "/Users/maddie/Documents/";
      section = "others";
      options = "--sort name --display folder";
    }
    {
      path = "/Users/maddie/Downloads/";
      section = "others";
      options = "--sort dateadded";
    }
  ];
}
