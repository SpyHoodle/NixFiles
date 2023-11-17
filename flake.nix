{
  description = "Maddie's Nix configurations";

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
      utils = import ./utils nixpkgs;

      nixpkgs_x86_64 = import nixpkgs {
        config.allowUnfree = true;
        config.allowUnsupportedSystem = false;
        config.allowBroken = false;
        config.permittedInsecurePackages = [
          "libgcrypt-1.8.10"
          "libxls-1.6.2"
        ];
        overlays = import ./overlays.nix;
        system = "x86_64-linux";
      };

      nixpkgs_aarch64_darwin = import nixpkgs {
        config.allowUnfree = true;
        config.allowUnsupportedSystem = false;
        config.allowBroken = false;
        overlays = import ./overlays.nix;
        system = "aarch64-darwin";
      };

      nixpkgs_aarch64_linux = import nixpkgs {
        config.allowUnfree = true;
        config.allowUnsupportedSystem = false;
        config.allowBroken = false;
        overlays = import ./overlays.nix;
        system = "aarch64-linux";
      };
    in
    {
      nixosConfigurations."MDesktop" = nixpkgs.lib.nixosSystem
      {
        specialArgs = { inherit username; };
        pkgs = nixpkgs_x86_64;
        system = "x86_64-linux";
        modules = [
          home-manager.nixosModules.home-manager
          {
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie/common ++ utils.nixFilesIn ./maddie/nixos;
            home-manager.extraSpecialArgs = { inherit username; pkgs = nixpkgs_x86_64; };
          }
        ] ++ utils.nixFilesIn ./systems/mdesktop;
      };

      darwinConfigurations."MMacBookPro" = darwin.lib.darwinSystem
      {
        pkgs = nixpkgs_aarch64_darwin;
        specialArgs = { inherit username; };
        system = "aarch64-darwin";
        modules = [
          home-manager.darwinModules.home-manager
          {
            home-manager.useUserPackages = true;
            home-manager.users.${username}.imports = utils.nixFilesIn ./maddie/common ++ utils.nixFilesIn ./maddie/macos;
            home-manager.extraSpecialArgs = { inherit username; pkgs = nixpkgs_aarch64_darwin; };
          }
        ] ++ utils.nixFilesIn ./systems/mmacbookpro;
      };

      formatter.x86_64-linux = nixpkgs_x86_64.legacyPackages.x86_64-linux.nixpkgs-fmt;
      formatter.aarch64-darwin = nixpkgs_aarch64_darwin.legacyPackages.aarch64-darwin.nixpkgs-fmt;
      formatter.aarch64-linux = nixpkgs_aarch64_linux.legacyPackages.aarch64-linux.nixpkgs-fmt;
    };
}

