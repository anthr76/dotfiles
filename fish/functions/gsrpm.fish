function gsrpm --description='Gives srpm in current working directory'
  rpmbuild -bs --define "_sourcedir $PWD" --define "_srcrpmdir $PWD" $argv
end
