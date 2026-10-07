{ pkgs, ... }:
let
    vars = import ../../vars/packages.nix { inherit pkgs; };
in {
    environment = {
        systemPackages = vars.systemPackages;
        pathsToLink = vars.pathsToLink;
    };
}
