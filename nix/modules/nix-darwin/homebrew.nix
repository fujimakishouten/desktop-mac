let
    vars = import ../../vars/homebrew.nix;
in {
    homebrew = {
        enable = true;

        onActivation = {
            autoUpdate = true;
            upgrade = true;
        };

        greedyCasks = true;

        brews = vars.brews;
        casks = vars.casks;
    };
}

