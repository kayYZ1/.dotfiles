if status is-interactive
    # Commands to run in interactive sessions can go here
end

#vi bindings
fish_vi_key_bindings

# starship
starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# amp
fish_add_path ~/.local/bin
alias dotfiles='/usr/bin/git --git-dir=/home/kayz/.dotfiles --work-tree=/home/kayz'
