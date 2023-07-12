{ config, ... }:

{
  programs.helix = {
    enable = true;
    /* languages = [
      {
        name = "rust";
        auto-format = true;
      }
    ]; */
    settings = {
      theme = "onedark";
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
      };
    };
  };
}
