{
  description = "Maddie's NixOS configuration";

  inputs = {
    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, darwin }:
    let
      username = "maddie";
      pkgs = import nixpkgs { system = "aarch64-darwin"; config.allowUnfree = true; config.allowUnsupportedSystem = false; config.allowBroken = false; overlays = import ./overlays.nix; };
      utils = import ./utils pkgs;
      specialArgs = { inherit username; inherit pkgs; };
    in
    {
      nixosConfigurations."luna" = nixpkgs.lib.nixosSystem {
        inherit specialArgs;
        inherit pkgs;
        system = "x86_64-linux";
        modules = [
          home-manager.nixosModules.home-manager
          {
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie/common ++ utils.nixFilesIn ./maddie/nixos;
            home-manager.extraSpecialArgs = specialArgs;
          }
        ] ++ utils.nixFilesIn ./systems/desktop;
      };

      darwinConfigurations."MMacBookPro" = darwin.lib.darwinSystem {
        inherit specialArgs;
        inherit pkgs;
        system = "aarch64-darwin";
        modules = [
          home-manager.darwinModules.home-manager
          {
            home-manager.useUserPackages = true;
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie/common ++ utils.nixFilesIn ./maddie/macos;
            home-manager.extraSpecialArgs = specialArgs;
          }
        ] ++ utils.nixFilesIn ./systems/macbookpro;
      };

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
      formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.nixpkgs-fmt;
    };
}
