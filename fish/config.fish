if status is-interactive
    # Commands to run in interactive sessions can go here
  bash -c "fm6000 -c 'random'"
  fzf_configure_bindings --directory=\cf
end
