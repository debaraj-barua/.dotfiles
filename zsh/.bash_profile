# adding since Cursor Agent keeps using bash for some reason
# force zsh to be used instead of bash

if [ -n "$CURSOR_TRACE_ID" ] && [ -z "$BASH_TO_ZSH" ]; then
  export BASH_TO_ZSH=1
  exec zsh
fi
