{ config, ... }:

{
  system.defaults = {
    CustomUserPreferences = {
      NSGlobalDomain = {
        # Set system accent and highlight color to purple
        AppleAccentColor = 5;
        AppleHighlightColor = "0.968627 0.831373 1.000000 Purple";
        # Make the menu bar always visible
        AppleMenuBarVisibleInFullscreen = 1;
      };
      "com.apple.desktopservices" = {
        # Don't write .DS_Store files to network or usb drives
        DSDontWriteNetworkStores = true;
        DSDontWriteUSBStores = true;
      };
      # Magic Mouse
      "com.apple.AppleMultitouchMouse" = {
        # Enable right click
        MouseButtonMode = "TwoButton";
        # Enable horizontal scrolling
        MouseHorizontalScroll = 1;
        # Enable one finger double tap for smart zoom
        MouseOneFingerDoubleTapGesture = 1;
        # Enable two finger tap for mission control
        MouseTwoFingerDoubleTapGesture = 3;
        # Enable two finger swipe to pan spaces
        MouseTwoFingerHorizSwipeGesture = 2;
      };
      # Trackpad
      "com.apple.AppleMultitouchTrackpad" = {
        # Don't secondary click on the corner of the trackpad
        TrackpadCornerSecondaryClick = 0;
        # Four/Five finger pinch for launchpad
        TrackpadFourFingerPinchGesture = 2;
        TrackpadFiveFingerPinchGesture = 2;
        # Three/Four fingers swipe horizontally to pan spaces
        TrackpadThreeFingerHorizSwipeGesture = 2;
        TrackpadFourFingerHorizSwipeGesture = 2;
        # Three/Four finger swipe vertically to activate mission control and app expose
        TrackpadThreeFingerVertSwipeGesture = 2;
        TrackpadFourFingerVertSwipeGesture = 2;
        # Swipe two fingers from the right edge to open notification centre
        TrackpadTwoFingerFromRightEdgeSwipeGesture = 3;
      };
    };
  };

  system.defaults = {
    NSGlobalDomain = {
      # Automatically enable dark theme at night
      AppleInterfaceStyleSwitchesAutomatically = true;
      # Use the metric system throughout macOS
      AppleMetricUnits = 1;
      # Always start with save dialog panels expanded
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
    };
    loginwindow = {
      # Disable using a guest user account
      GuestEnabled = false;
    };
    menuExtraClock = {
      # Show seconds and date on menu bar clock
      ShowSeconds = true;
      ShowDate = 1;
    };
  };

  # Enable Touch ID for sudo
  security.pam.enableSudoTouchIdAuth = true;
}

