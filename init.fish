function init --on-event init_fzf-fs
  # Detect fzf
  if not available fzf
    echo "🍒 Please install 'fzf' first!"
    echo "brew install fzf"
    return
  end
end
. /usr/local/opt/fzf/shell/key-bindings.fish
set -x FZF_DEFAULT_OPTS '-x --bind=ctrl-p:up,ctrl-n:down,;:abort,btab:next-history,tab:previous-history'
if status --is-interactive
    emit init_fzf-fs $fisher_config/conf.d
end
