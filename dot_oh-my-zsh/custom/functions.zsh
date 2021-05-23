stern () {
podman-host run --userns keep-id --rm -it -v "$HOME/.kube:/$HOME/.kube":z -e KUBECONFIG="$KUBECONFIG" ghcr.io/stern/stern "$@"
}

butane () {
podman-host run --rm --tty --interactive --security-opt label=disable --volume ${PWD}:/pwd --workdir /pwd  quay.io/coreos/butane:release "$@"
}