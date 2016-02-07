# fe [FUZZY PATTERN] - open the selected file with the default editor
#   - bypass fuzzy finder if there's only one match (--select-1)
#   - exit if there's no match (--exit-0)
function fe
	set -l files (fzf-tmux --query="$argv[1]" --select-1 --exit-0)
	and [ -n "$files" ]; and eval $EDITOR "$files"
end
