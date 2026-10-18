dest := env("XDG_DATA_HOME", env("HOME") / ".local/share") / "fcitx5"

# Install the addon (applies after fcitx5 restarts, e.g. re-login)
install:
    install -Dm644 addon/lockscreenenglish.conf "{{dest}}/addon/lockscreenenglish.conf"
    install -Dm644 lua/lockscreenenglish/main.lua "{{dest}}/lua/lockscreenenglish/main.lua"

# Remove the addon (applies after fcitx5 restarts, e.g. re-login)
uninstall:
    gio trash "{{dest}}/addon/lockscreenenglish.conf" "{{dest}}/lua/lockscreenenglish"
