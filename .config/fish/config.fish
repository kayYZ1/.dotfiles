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

# pnpm
set -gx PNPM_HOME "/home/kayz/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
    set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# depot_tools
set --export PATH $HOME/Code/depot_tools $PATH

# Added by the Hunk installer (https://hunk.dev)
fish_add_path '/home/kayz/.hunk/bin'

# aliases: modern command replacements
if status is-interactive
    alias ls='eza'
    alias cat='bat'
    alias grep='rg'
    alias find='fd'
end
