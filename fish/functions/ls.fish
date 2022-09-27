function ls --wraps=lsd --description 'lsd shorthand'
  if type -q lsd
      lsd $argv
  else
      /usr/bin/ls $argv
  end
end
