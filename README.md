# fcitx5-lockscreen-english

Forces the English layout (`keyboard-us`) in the KDE Plasma lock screen, so the password field no longer starts in Hangul.

## Why

The lock screen password field ([libplasma `PasswordField`](https://invent.kde.org/plasma/libplasma/-/blob/master/src/declarativeimports/plasmaextracomponents/qml/PasswordField.qml)) sets `inputMethodHints` without `Qt.ImhHiddenText`, so fcitx5 receives `Sensitive` but not `Password`. fcitx5 only disables the input method for `Password` fields, so `ActiveByDefault=True` activates Hangul there.

## Install

Requires [fcitx5-lua](https://github.com/fcitx/fcitx5-lua) (`sudo dnf install fcitx5-lua`) and [just](https://github.com/casey/just).

```sh
just install
```

Log out and back in to apply. `just uninstall` removes it.
