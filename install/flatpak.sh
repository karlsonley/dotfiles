flatpak install -y flathub \
  com.discordapp.Discord \
  com.valvesoftware.Steam \
  com.heroicgameslauncher.hgl # Epic Games etc.

# Cleanup
sudo flatpak uninstall --unused
