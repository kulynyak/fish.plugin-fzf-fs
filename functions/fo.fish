# fo [FUZZY PATTERN] - open the selected file
#   - ctrl-o to open with `open` command,
#   - ctrl-e or Enter key to open with the $EDITOR
function fo
	set -l fn "$TMPDIR/"(random)".fsf"
	fzf-tmux --query="$argv[1]" --exit-0 --expect=ctrl-o,ctrl-e > $fn
    set -l key (cat $fn | head -1)
    set -l file (cat $fn | head -2 | tail -1)
	if test -n "$file" ;
      [ "$key" = ctrl-o ]; and open "$file"; or eval "$EDITOR" "$file"
    end
	rm $fn
end
