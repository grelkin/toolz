other_args=${other_args:-()}

if cmd_exists "${other_args[0]}"; then
  cmd="$(cmd_filename "${other_args[0]}")""$(printf " %s" "${other_args[@]:1}")"
  TOOL="$cmd" sh -c 'exec "${SHELL:-sh}" -c "$TOOL"'
elif is not equal "${other_args[0]}" "()"; then
  red_bold "Command '${other_args[0]}' not found"
  return 1
else
  # do nothing
  return 0
fi
