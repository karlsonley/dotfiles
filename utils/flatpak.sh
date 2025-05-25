# Update
flatpak update

# Install applications
flatpak install -y flathub \
  com.discordapp.Discord \
  com.valvesoftware.Steam \
  com.heroicgameslauncher.hgl \
  com.spotify.Client \
  app.zen_browser.zen \

# Cleanup
sudo flatpak uninstall --unused
