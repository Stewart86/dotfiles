if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add -- gc 'git add . && git commit -m '
    abbr --add -- gca 'git add . && git commit -m '\''auto commit'\'' && git push'
    abbr --add -- gp 'git push'
    abbr --add -- gpl 'git pull'
    abbr --add -- lg lazygit
    abbr --add -- ll 'lsd -l -A'
    abbr --add -- ls 'lsd -A'
    abbr --add -- tree 'lsd --tree'
    abbr --add -- vi 'nvim'
    abbr --add -- cat 'batcat'
    abbr --add -- cd 'z'
    
    zoxide init fish | source
    
    fnm env --use-on-cd | source
    
    set -gx EDITOR nvim
    
    # Pyen path
    set -Ux PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    
    pyenv init - | source
end

# pnpm
set -gx PNPM_HOME "/home/stewart/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
