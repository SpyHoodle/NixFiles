[
  # My build of suckless dwm
  (final: prev: {
    dwm = prev.dwm.overrideAttrs (oldAttrs: {
      src = final.fetchFromGitea {
        domain = "git.spyhoodle.me";
        owner = "maddie";
        repo = "dwm";
        rev = "a06076bfb9324af6c4122d9cc5b0904778013350";
        sha256 = "sha256-KGqbff/i9fG0B/gMrdnwevRElL6r8lbYCloWp/NPx+0=";
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
        rev = "1b12798a3762807697227e9e40be29408df59ee9";
        sha256 = "sha256-wnVNqNCUpJTqHXfst9DiBaq/gzVwhlq07VM9CixczRc=";
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
