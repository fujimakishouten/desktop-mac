{
    environment.etc = {
        bash = {
            enable = false;
        };
        fish = {
            enable = false;
        };
        nushell = {
            enable = false;
        };
        zsh = {
            enable = false;
        };
        terminfo = {
            enable = false;
        };
        "ssh/ssh_config.d/100-nix-darwin.conf" = {
            enable = false;
        };
        "ssh/sshd_config.d/100-nix-darwin.conf" = {
            enable = false;
        };
        "ssh/sshd_config.d/099-host-keys.conf" = {
            enable = false;
        };
        "ssh/sshd_config.d/101-authorized-keys.conf" = {
            enable = false;
        };
    };
}

