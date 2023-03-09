{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rustup
  ];

  home = {
    sessionVariables = {
      CARGO_HOME = "${config.xdg.dataHome}/cargo";
      RUSTUP_HOME = "${config.xdg.dataHome}/rustup";
    };
    sessionPath = [ "$CARGO_HOME/bin" ];
  };
}
