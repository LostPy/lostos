# https://just.systems

default:
    echo 'Hello, world!'

# Configure all pre-installed tools: nushel, helix, zellij, terminal
configure-nushell:
    cp -rf /usr/share/lostos-default-config/nushell/* ~/.config/nushell/

# Add a default configuration for nushell
configure-helix:
    cp -rf /usr/share/lostos-default-config/helix/* ~/.config/helix/

# Add a default configuration for helix
configure-zellij:
    cp -rf /usr/share/lostos-default-config/zellij/* ~/.config/zellij/

# Add a default configuration and layouts for zellij
configure-yazi:
    cp -rf /usr/share/lostos-default-config/yazi/* ~/.config/yazi/

# Add a default configuration for yazi TUI file explorer
configure-terminal:
    gsettings set org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/$PTYXIS_PROFILE/ use-custom-command true
    gsettings set org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/$PTYXIS_PROFILE/ custom-command nu
