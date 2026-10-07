let
    vars = import ../../vars/system.nix;
in {
    system = {
        stateVersion = vars.stateVersion;
        primaryUser = vars.primaryUser;
    };
}

