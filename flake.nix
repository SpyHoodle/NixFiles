{
  description = "Maddie's NixOS configuration";

  inputs = {
    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager }:
    let
      username = "spy";
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; overlays = import ./overlays.nix; };
      utils = import ./utils pkgs;
      specialArgs = { inherit username; inherit pkgs; };
    in
    {
      packages.${system} = {
        nixosConfigurations.luna = nixpkgs.lib.nixosSystem {
          inherit system;
          inherit pkgs;
          inherit specialArgs;
          modules = [
            home-manager.nixosModules.home-manager
            {
              home-manager.users.${username}.imports = utils.nixFilesIn ./maddie;
              home-manager.extraSpecialArgs = specialArgs;
            }
          ] ++ utils.nixFilesIn ./system;
        };
      };

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
    };
}
