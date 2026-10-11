{
    programs = {
        bash = {
            enable = false;
            completion = {
                enable = false;
            };
        };
        fish = {
            enable = false;
            vendor = {
                config = {
                    enable = false;
                };
                completions = {
                    enable = false;
                };
                functions = {
                    enable = false;
                };
            };
        };
        zsh = {
            enable = false;

            enableCompletion = false;
            enableBashCompletion = false;
            enableGlobalCompInit = false;
        };
    };
}

