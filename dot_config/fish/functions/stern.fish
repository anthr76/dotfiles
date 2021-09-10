function stern --wraps=podman --description 'stern in docker'
  podman run --userns keep-id --rm -it -v "$HOME/.kube:/$HOME/.kube":z -e KUBECONFIG="$KUBECONFIG" ghcr.io/stern/stern $argv
end
