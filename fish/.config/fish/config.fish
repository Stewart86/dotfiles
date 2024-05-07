if status is-interactive
    # git
    abbr --add -- gc 'git add . && git commit -m '
    abbr --add -- gca 'git add . && git commit -m '\''auto commit'\'' && git push'
    abbr --add -- gp 'git push'
    abbr --add -- gpl 'git pull'
    abbr --add -- lg lazygit
    
    # navigate
    abbr --add -- ll 'lsd -l -A'
    abbr --add -- ls 'lsd -A'
    abbr --add -- tree 'lsd --tree'
    abbr --add -- cd 'z'
    
    # edit
    abbr --add -- vi 'nvim'
    
    # viw
    abbr --add -- cat 'batcat'
    abbr --add -- bat 'batcat'
end

zoxide init fish | source
fnm env --use-on-cd | source
pyenv init - | source

# defaults
set -gx EDITOR nvim
set -g fish_greeting 'logged in to '$hostname

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

# pnpm
set -gx PNPM_HOME "/home/stewart/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
