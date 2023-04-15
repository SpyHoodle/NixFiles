[
  # My build of suckless dwm
  (final: prev: {
    dwm = prev.dwm.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "dwm";
        rev = "dca69fedae1e29d946ece4c8325907732015f83f";
        sha256 = "sha256-OezFDY2Gxu+qqT3hdGb+g+YyqV+8R8gSN3ux5+QvL4o=";
      };
    });
    st = prev.st.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "st";
        rev = "22e582e5acf6e4eb52c57df51f59f84bbb7d2f13";
        sha256 = "sha256-ko4be6N/igCMo28/as/AWKMYswm/jIH1ILeVoi2Gpx8=";
      };
      buildInputs = oldAttrs.buildInputs ++ [ final.harfbuzz ];
    });
    dmenu = prev.dmenu.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "dmenu";
        rev = "82156146b3f3ab720ac752a953b952d638e1f935";
        sha256 = "sha256-L6aqP7wmegl6Jv4ytMw/j1FwH5lXv8QjWOY5mHotkxI=";
      };
    });
    slstatus = prev.slstatus.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "slstatus";
        rev = "b22f3d8ec8e2d67bbd32f02721d9d8157a46edd4";
        sha256 = "sha256-OhssKVQArcQAgCavkFaCRvxUM3689t1v3YCv9IW7osU=";
      };
    });
    slock = prev.slock.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "slock";
        rev = "8c5d321b641961237f747d3e68f52b163d673634";
        sha256 = "sha256-y+6VU3jXbUOyhUcyPC7CDGjyWLSJcCkhYiHscVib7j4=";
      };
      buildInputs = oldAttrs.buildInputs ++ [ final.xorg.libXpm ];
    });
    tabbed = prev.tabbed.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "tabbed";
        rev = "1001f193fd076cba12bd1ec9f113c144b37d8689";
        sha256 = "sha256-M5LrFplGfzCdhLTutsPNmox69brvAm2BlXnyza9kGxQ=";
      };
    });
    ncmpcpp = prev.ncmpcpp.override {
      visualizerSupport = true;
      clockSupport = false;
    };
    nerdfonts = prev.nerdfonts.override {
      fonts = [ "Iosevka" "JetBrainsMono" "Terminus"  ];
    };
  })
]
