# cdf [FUZZY PATTERN] - cd into the directory of the selected file
function cdf
	set -l fn "$TMPDIR/"(random)".fsf"
	and fzf +m -q "$argv[1]" > $fn
	and set -l file (cat $fn | head -1)
	and set -l dir (dirname "$file")
    and cd "$dir"
	command rm $fn
end
