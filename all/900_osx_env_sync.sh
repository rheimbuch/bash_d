if [ -x /usr/libexec/path_helper ]; then

eval `/usr/libexec/path_helper -s`

  if [[ -s $HOME/.MacOSX/environment ]] ; then
    defaults write $HOME/.MacOSX/environment PATH "$PATH"
  fi

fi