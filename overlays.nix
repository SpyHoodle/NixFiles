[
  # My build of suckless dwm
  (final: prev: {
    dwm = prev.dwm.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitHub {
        owner = "SpyHoodle";
        repo = "dwm";
        rev = "a8c4c51946229f792e8621bde44a7001f7977dc7";
        sha256 = "sha256-7zbUmDVC2QfiZ4SP9fJbiqxQm7X62dlixL1hRR8zv+k=";
      };
    });
    st = prev.st.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitHub {
        owner = "SpyHoodle";
        repo = "st";
        rev = "22e582e5acf6e4eb52c57df51f59f84bbb7d2f13";
        sha256 = "sha256-ko4be6N/igCMo28/as/AWKMYswm/jIH1ILeVoi2Gpx8=";
      };
      buildInputs = oldAttrs.buildInputs ++ [ final.harfbuzz ];
    });
    dmenu = prev.dmenu.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitHub {
        owner = "SpyHoodle";
        repo = "dmenu";
        rev = "82156146b3f3ab720ac752a953b952d638e1f935";
        sha256 = "sha256-L6aqP7wmegl6Jv4ytMw/j1FwH5lXv8QjWOY5mHotkxI=";
      };
    });
    slstatus = prev.slstatus.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitHub {
        owner = "SpyHoodle";
        repo = "slstatus";
        rev = "b22f3d8ec8e2d67bbd32f02721d9d8157a46edd4";
        sha256 = "sha256-OhssKVQArcQAgCavkFaCRvxUM3689t1v3YCv9IW7osU=";
      };
    });
    slock = prev.slock.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitHub {
        owner = "SpyHoodle";
        repo = "slock";
        rev = "e71c4ac0106a438abb5acf4ae89b8518a9bf3682";
        sha256 = "sha256-7ZeARKljyQSHPoFb+6p50uIr2q5VOqE/XSELqurNMBw=";
      };
      buildInputs = oldAttrs.buildInputs ++ [ final.xorg.libXpm ];
    });
    ncmpcpp = prev.ncmpcpp.override {
      visualizerSupport = true;
      clockSupport = true;
    };
    nerdfonts = prev.nerdfonts.override {
      fonts = [ "Iosevka" "Terminus" ];
    };
  })
]
