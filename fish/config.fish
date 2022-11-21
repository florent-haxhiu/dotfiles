if status is-interactive
    # Commands to run in interactive sessions can go here
    bash -c "fm6000 -c 'random'"

    # Adding my bin to PATH
    fish_add_path -aP $HOME/.local/bin

    starship init fish | source

    # Set if your term supports 'pipenv shell --fancy'
    set pipenv_fish_fancy yes

    if set -q VIRTUAL_ENV
      bash -c "echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " ""
    end

    # Shortcut for nvim, can't be asked to type out nvim -> vim is easier
    function vim
        nvim $argv
    end

    function python
        python3 $argv
    end

    function pip
        pip3 $argv
    end

    function ls
        exa $argv
    end

    function cat
        bat $argv
    end

end
