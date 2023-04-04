cmd_filename() {
  realpath "$TOOLZ_CMD/$TOOLZ_PREFIX$1$TOOLZ_SUFFIX"
}

lib_filename() {
  realpath "$TOOLZ_LIB/$1$TOOLZ_SUFFIX"
}

cmd_name() {
  local name
  name=$(basename "$1")
  name=${name#"$TOOLZ_PREFIX"}
  name=${name%"$TOOLZ_SUFFIX"}
  echo "$name"
}

lib_name() {
  local name
  name=$(basename "$1")
  name=${name%"$TOOLZ_SUFFIX"}
  echo "$name"
}

cmd_exists() {
  local file
  file="$(cmd_filename "$1")"
  if is file "$file" && is executable "$file"; then
    return 0
  else
    return 1
  fi
}

lib_exists() {
  local file
  file="$(lib_filename "$1")"
  if is file "$file"; then
    return 0
  else
    return 1
  fi
}

cmd_list() {
  local files
  files="$TOOLZ_CMD/$TOOLZ_PREFIX*$TOOLZ_SUFFIX"
  for file in $files; do
    if is existent "$file"; then
      cmd_name "$file"
    fi
  done
}

lib_list() {
  local files
  files="$TOOLZ_LIB/*$TOOLZ_SUFFIX"
  for file in $files; do
    if is existent "$file"; then
      lib_name "$file"
    fi
  done
}

cmd_create() {
  local file
  file="$(cmd_filename "$1")"
  if is not existent "$file"; then
    touch "$file"
    chmod +x "$file"
    {
      echo '#!/usr/bin/env bash'
      echo ''
      echo 'echo "Hello World"'
    } > "$file"
  fi
  echo "$file"
}

lib_create() {
  local file
  file="$(lib_filename "$1")"
  if is not existent "$file"; then
    touch "$file"
    {
      echo ''
      echo 'sample_function() {'
      echo '  echo "Hello World"'
      echo '}'
    } > "$file"
  fi
  echo "$file"
}
