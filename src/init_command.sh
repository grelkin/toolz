args=${args:-()}

if is equal "${args[shell]}" "fish"; then
  init_fish
fi
