# Создание ярлыка.
gsettings set org.gnome.shell favorite-apps "$(echo $(gsettings get org.gnome.shell favorite-apps) | sed "s/\]/, 'google-chrome.desktop'\]/")"
