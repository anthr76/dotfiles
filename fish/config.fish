for line in (systemctl --user show-environment)
    set key (echo "$line" | cut -d '=' -f 1)
    set value (echo "$line" | cut -d '=' -f 2-)
    set -g -x "$key" "$value"
end

set -gx KUBECONFIG $HOME/.kube/config
set -gx GPG_TTY (tty)
set -gx ANSIBLE_FORCE_COLOR true
set -gx PY_COLORS true
set -gx MOLECULE_DRIVER_NAME podman
set -U fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -f /run/.containerenv
  # TODO make this work somehow
  # set -a fish_complete_path /run/host/usr/share/fish/vendor_completions.d
end

starship init fish | source
zoxide init fish | source
