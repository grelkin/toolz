init_fish() {
  cat <<- EOF
function __fish_toolz_not_using_command
  set cmd (commandline -opc)
  echo "\$cmd"
  if [ (count \$cmd) -eq 1 ]
    return 0
  end
  return 1
end

function __fish_toolz_using_command
  set cmd (commandline -opc)
  echo "\$cmd"
  if [ (count \$cmd) -eq 2 ]
    if [ \$argv[1] = \$cmd[2] ]
      return 0
    end
  end
  return 1
end

function __fish_toolz_using_command_and_arg
  set cmd (commandline -opc)
  if [ (count \$cmd) -gt 2 ]
    if [ \$argv[1] = \$cmd[2] ]
      if [ \$argv[2] = \$cmd[3] ]
        return 0
      end
    end
  end
  return 1
end

complete -c toolz -e
complete -f -c toolz
complete -f -c toolz -x -n "__fish_toolz_not_using_command" -a "list edit run init cd src init remove"

complete -f -c toolz -x -n "__fish_toolz_using_command list"
complete -f -c toolz -x -n "__fish_toolz_using_command ls"
complete -f -c toolz -x -n "__fish_toolz_using_command l"
complete -f -c toolz -x -n "__fish_toolz_using_command list" -s c -l commands
complete -f -c toolz -x -n "__fish_toolz_using_command list" -s l -l libraries
complete -f -c toolz -x -n "__fish_toolz_using_command ls" -s c -l commands
complete -f -c toolz -x -n "__fish_toolz_using_command ls" -s l -l libraries
complete -f -c toolz -x -n "__fish_toolz_using_command l" -s c -l commands
complete -f -c toolz -x -n "__fish_toolz_using_command l" -s l -l libraries

complete -f -c toolz -x -n "__fish_toolz_using_command src" -a "(toolz list --libraries)"

complete -f -c toolz -x -n "__fish_toolz_using_command init" -a "fish"

complete -f -c toolz -x -n "__fish_toolz_using_command edit" -s l -l library
complete -f -c toolz -x -n "__fish_toolz_using_command e" -s l -l library
complete -f -c toolz -x -n "__fish_toolz_using_command edit" -a "(toolz list --commands)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg edit -l" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg edit --library" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command e" -a "(toolz list --commands)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg e -l" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg e --library" -a "(toolz list --libraries)"

complete -f -c toolz -x -n "__fish_toolz_using_command remove" -s l -l library
complete -f -c toolz -x -n "__fish_toolz_using_command rm" -s l -l library
complete -f -c toolz -x -n "__fish_toolz_using_command remove" -a "(toolz list --commands)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg remove -l" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg remove --library" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command rm" -a "(toolz list --commands)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg rm -l" -a "(toolz list --libraries)"
complete -f -c toolz -x -n "__fish_toolz_using_command_and_arg rm --library" -a "(toolz list --libraries)"

complete -f -c toolz -x -n "__fish_toolz_using_command run" -a "(toolz list --commands)"
complete -f -c toolz -x -n "__fish_toolz_using_command r" -a "(toolz list --commands)"

alias t="toolz run"
EOF
}
