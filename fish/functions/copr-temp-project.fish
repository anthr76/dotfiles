function copr-temp-project --description 'Create a 14 day project in copr'
  copr create --delete-after-days 15 \
  --fedora-review \
  --chroot fedora-rawhide-x86_64 \
  --chroot fedora-rawhide-s390x \
  --chroot fedora-rawhide-ppc64le \
  --chroot fedora-rawhide-aarch64 \
  $argv
end
