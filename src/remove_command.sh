args=${args:-()}

if is equal "${args[--library]}" 1; then
  typ="library"
  name=$(yellow_bold ${args[name]})
  file=$(lib_filename "${args[name]}")
else
  typ="command"
  name=$(red_bold ${args[name]})
  file=$(cmd_filename "${args[name]}")
fi

if is exists "$file"; then
  read -p "Are you sure you want to remove $typ $name (y/N) ? " choice
  case "$choice" in
    y|Y ) rm "$file";;
    * ) return 0;;
  esac
fi
