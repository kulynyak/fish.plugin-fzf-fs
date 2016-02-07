# fd [directory] - cd to selected directory from current
function fd
	set -l target
	if count $argv > /dev/null; set target "$argv[1]"; else; set target '.'; end
	set -l fn "$TMPDIR/"(random)".fsf"
	eval "find $target -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf -m > $fn"
	set -l dir (cat $fn); and cd $dir
	rm $fn
end
