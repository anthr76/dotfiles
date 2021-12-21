# .dotfiles

![](https://i.imgur.com/RIKJ5TW.png)

## :handshake:&nbsp; Thanks

A lot of inspiration for this repo came from the following people:

- [onedr0p/dotfiles](https://github.com/onedr0p/dotfiles)
- [stefancrain/dotfiles](https://github.com/stefancrain/dotfiles)
- [twpayne/dotfiles](https://github.com/twpayne/dotfiles)

Getting sway on top of KDE setup:

```
rpm-ostree install \
alacritty brightnessctl fira-code-fons network-manager-applet playerctl sway sway-systemd


systemctl enable nm-applet.service && org.kwallet.service
```

Note it's an ongoing effort to try and just plug into KDE dbus instead of relying on apps like `playerctl`
