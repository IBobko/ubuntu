# Создание ярлыка.
gsettings set org.gnome.shell favorite-apps "$(echo $(gsettings get org.gnome.shell favorite-apps) | sed "s/\]/, 'google-chrome.desktop'\]/")"

# Commands to configure keyboard layouts through gsettings
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ru')]"
gsettings set org.gnome.desktop.input-sources xkb-options "['grp:alt_shift_toggle']"
