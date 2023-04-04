args=${args:-()}

if lib_exists "${args[library]}"; then
  realpath "$(lib_filename "${args[library]}")"
fi
