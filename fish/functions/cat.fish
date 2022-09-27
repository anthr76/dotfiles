function cat --wraps=bat --description 'bat shorthand'
  if type -q bat
      bat --paging=never $argv
  else
      /usr/bin/cat $argv
  end
end
