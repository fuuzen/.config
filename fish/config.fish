if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-11-13 03:50:39
set PATH $PATH /home/lsy/.local/bin


# nvm
if test -z "$XDG_CONFIG_HOME"
    set NVM_DIR "$HOME/.nvm"
else
    set NVM_DIR "$XDG_CONFIG_HOME/nvm"
end
if test -s "$NVM_DIR/nvm.fish"
    source "$NVM_DIR/nvm.fish"
end
# nvm end


# pnpm
set -gx PNPM_HOME "/home/lsy/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
