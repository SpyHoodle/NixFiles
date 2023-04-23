{ config, username, ... }:

{
  services.syncthing = {
    enable = true;
    user = "${username}";
    group = "users";
    dataDir = "/home/${username}";
    configDir = "/home/${username}/.config/syncthing";
    guiAddress = "0.0.0.0:8384";
    overrideFolders = true;
    overrideDevices = true;
    devices = {
      "M.Phone.Pixel" = { id = "WMGWVOU-DFZQSZO-46XQJQA-Q5XD5ZB-NDXK5SP-LXNAADH-Z2KJN4P-4P4UXA5"; };
      "M.MacBookPro" = { id = "A5HRCSI-RWYZ6GG-SCBZ2OJ-PG6T7VP-WKDN2VP-CNXIQ3B-VCJ7ZHO-MTV63QP"; };
      "Lambda" = { id = "ZYNSFWR-F3ZNDDT-66TSJWB-PRP3KQK-IWTTABU-GGWT5DL-RWC7VAE-LI5AXQQ"; };
    };
    folders = {
      "Documents" = {
        path = "/home/${username}/Documents";
        devices = [ "M.Phone.Pixel" ];
      };
      "Pictures" = {
        path = "/home/${username}/Pictures";
        devices = [ "M.Phone.Pixel" ];
      };
      "Videos" = {
        path = "/home/${username}/Videos";
        devices = [ "M.Phone.Pixel" ];
      };
      "Music" = {
        path = "/home/${username}/Music";
        devices = [ "M.Phone.Pixel" ];
      };
      "Android Camera" = {
        id = "pixel_7_pro_2qyx-photos";
        path = "/home/${username}/Pictures/DCIM";
        devices = [ "M.Phone.Pixel" ];
      };
    };
  };
}
