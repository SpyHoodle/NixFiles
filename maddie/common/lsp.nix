{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs
    sumneko-lua-language-server
    nodePackages.bash-language-server
    nodePackages.vim-language-server
    nodePackages.pyright
    rust-analyzer
    rnix-lsp
    universal-ctags
  ];
}
