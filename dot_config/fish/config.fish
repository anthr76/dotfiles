set -gx KUBE_EDITOR nvim
set -gx KUBECONFIG $HOME/.kube/config
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx GPG_TTY (tty)

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
