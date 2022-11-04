if status is-interactive
    # Commands to run in interactive sessions can go here
  bash -c "fm6000 -c 'random'"
  fzf_configure_bindings --directory=\cf
  starship init fish | source

  # Shortcut for nvim, can't be asked to type out nvim -> vim is easier
  function vim
    nvim $argv
  end 

  function python
    python3 $argv
  end

end
