set PATH $HOME/.emacs.d/bin $PATH
set PATH $HOME/.rbenv/bin $PATH

status --is-interactive; and rbenv init - | source

set -gx PATH $PATH $HOME/.krew/bin


