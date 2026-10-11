{ pkgs, ... }:
let
    vars = import ../../vars/packages.nix { inherit pkgs; };
in {
    imports = [
        ./environment/etc.nix
    ];

    environment = {
        systemPackages = vars.systemPackages;
        pathsToLink = vars.pathsToLink;
    };
}
