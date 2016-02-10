# fda [directory] - cd to selected directory (including hidden directories) from current
function fda
	set -l target
	if count $argv > /dev/null; set target "$argv[1]"; else; set target '.'; end
	set -l fn "$TMPDIR/"(random)".fsf"
	eval "find $target -type d 2> /dev/null | fzf +m > $fn"
	set -l dir (cat $fn); and cd $dir
	command rm $fn
end
