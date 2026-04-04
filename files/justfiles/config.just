all-preinstalled: nushell helix zellij terminal
  echo "config for preinstalled packages setup!"

nushell:
  cp -rf /usr/share/lostos-default-config/nushell/* ~/.config/nushell/

helix:
  cp -rf /usr/share/lostos-default-config/helix/* ~/.config/helix/

zellij:
  cp -rf /usr/share/lostos-default-config/zellij/* ~/.config/zellij/

yazi:
  cp -rf /usr/share/lostos-default-config/yazi/* ~/.config/yazi/

terminal:
  gsettings set org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/$PTYXIS_PROFILE/ use-custom-command true
  gsettings set org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/$PTYXIS_PROFILE/ custom-command nu
