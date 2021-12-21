#!/usr/bin/env fish
#
# The purpose of this script relates around the findings in https://github.com/containers/toolbox/issues/568
#
if test -f /run/.containerenv
    sudo chown anthonyjrabbito:tty (tty)
end
