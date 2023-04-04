args=${args:-()}

if is empty "${args[--commands]}" && is empty "${args[--libraries]}"; then
  bold "Commands:"
  for cmd in $(cmd_list); do
    echo "  $(green_bold "$cmd")"
  done
  echo ""
  bold "Libraries:"
  for lib in $(lib_list); do
    echo "  $(blue_bold "$lib")"
  done
  echo ""
elif is equal "${args[--commands]}" 1; then
  cmd_list
elif is equal "${args[--libraries]}" 1; then
  lib_list
fi
