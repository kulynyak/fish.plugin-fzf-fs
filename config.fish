if not available fzf
    echo "🍒 Please install 'fzf' first!"
    echo "brew install fzf"
end
. /usr/local/opt/fzf/shell/key-bindings.fish
set -x FZF_DEFAULT_OPTS '-x --bind=ctrl-p:up,ctrl-n:down,;:abort,btab:next-history,tab:previous-history'
