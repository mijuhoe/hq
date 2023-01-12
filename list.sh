c="python show_dirs.py|sort"
if [ "$1" = "-l" ]; then
  watch -n 1 "$c"
else
  sh -c "$c"
fi