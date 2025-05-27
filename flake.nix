{
  description = "HappyLime's NixOS Configuration";

  inputs = {
    # Core inputs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    stylix.url = "github:danth/stylix";
    
    # Home Manager 
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations.nixos = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          # Hardware configuration
          ./hardware-configuration.nix
          
          # Main system config
          ./configuration.nix
          
          # Module imports
          ./modules/system.nix
          ./modules/desktop.nix
          ./modules/packages.nix
          ./modules/development.nix
          ./modules/hardware.nix
          ./modules/users.nix
          ./modules/system_bashrc.nix
          #./modules/stylix.nix

          # Stylix
          inputs.stylix.nixosModules.stylix

          # Home Manager module
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };

            home-manager.users.happylime = {
              imports = [ ./home/happylime/happylime.nix ];

              # Disable weird error for input-method for asian characters
              i18n.inputMethod = {
                enabled = "none";
              };
            };
          }

        ];
      };
    };
}
