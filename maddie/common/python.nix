{ config, pkgs, ... }:

let
  packages = ps: with ps; [
    numpy
    matplotlib
    tkinter
    pillow
    psycopg
    passlib
    pyotp
    aiosmtplib
    argon2_cffi
    python-dotenv
    python-lsp-server
  ];
in
{
  home.packages = [
    (pkgs.python311.withPackages packages)
  ];
}
