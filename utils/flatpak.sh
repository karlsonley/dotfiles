# Update
flatpak update -y

# Install applications
flatpak install -y flathub \
  com.discordapp.Discord \
  com.valvesoftware.Steam \
  com.heroicgameslauncher.hgl \
  com.spotify.Client \
  app.zen_browser.zen \
  org.gnome.Extensions \
  io.anytype.anytype \

# Cleanup
sudo flatpak uninstall --unused -y
