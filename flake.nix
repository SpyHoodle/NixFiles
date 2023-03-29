{
  description = "Maddie's NixOS configuration";

  inputs = {
    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager }:
    let
      username = "maddie";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; overlays = import ./overlays.nix; };
      utils = import ./utils pkgs;
      specialArgs = { inherit username; inherit pkgs; };
    in
    {
      nixosConfigurations.luna = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        inherit pkgs;
        inherit specialArgs;
        modules = [
          home-manager.nixosModules.home-manager
          {
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie;
            home-manager.extraSpecialArgs = specialArgs;
          }
        ] ++ utils.nixFilesIn ./systems/desktop;
      };

      darwinConfigurations."MMacBookPro" = inputs.darwin.lib.darwinSystem {
        inherit pkgs;
        inherit specialArgs;
        system = "aarch64-darwin",
        modules = [
          home-manager.darwinModules.home-manager
          {
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie;
            home-manager.extraSpecialArgs = specialArgs;
          }
        ] ++ utils.nixFilesIn ./systems/macbookpro;
      };

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
    };
}
