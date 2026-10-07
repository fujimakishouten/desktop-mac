{
    description = "Default flake setup NixOS";

    nixConfig = {
        experimental-features = [
            "nix-command"
            "flakes"
        ];
    };

    inputs = {
        nixpkgs = {
            url = "github:nixos/nixpkgs?ref=nixos-unstable";
        };
        nix-darwin = {
            url = "github:nix-darwin/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = {
        self,
        nixpkgs,
        nix-darwin,
        home-manager,
    }: {
        darwinConfigurations = {
            default = nix-darwin.lib.darwinSystem {
                system = "aarch64-darwin";
                modules = import ./modules/nix-darwin.nix ++ [
                    home-manager.darwinModules.home-manager
                ];
            };
        };
    };
}

