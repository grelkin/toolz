args=${args:-()}

if is equal "${args[--library]}" 1; then
  file=$(lib_create "${args[name]}")
else
  file=$(cmd_create "${args[name]}")
fi

TOOL="$file" sh -c 'exec "${SHELL:-sh}" -c "${EDITOR:-vi} "$TOOL""'
