if status is-interactive
    # Commands to run in interactive sessions can go here
    bash -c "fm6000 -c 'random'"

    starship init fish | source

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
