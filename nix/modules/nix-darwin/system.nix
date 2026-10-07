let
    vars = import ../../vars/system.nix;
in {
    imports = [
        ./system/defaults/NSGlobalDomain.nix
        ./system/defaults/WindowManager.nix
        ./system/defaults/controlcenter.nix
        ./system/defaults/dock.nix
        ./system/defaults/finder.nix
        ./system/defaults/loginwindow.nix
        ./system/defaults/menuExtraClock.nix
        ./system/defaults/screensaver.nix
        ./system/defaults/trackpad.nix
    ];

    system = {
        stateVersion = vars.stateVersion;
        primaryUser = vars.primaryUser;
    };
}

