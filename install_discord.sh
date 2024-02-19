#! /bin/sh
curl -Ls -o /tmp/discord.tar.gz  'https://discord.com/api/download?platform=linux&format=tar.gz' 
sudo tar -xvzf /tmp/discord*.tar.gz -C /opt
rm -rf /tmp/discord.tar.gz
sudo ln -sf /opt/Discord/Discord /usr/bin/Discord
sudo sed -i 's|Exec=/usr/share/discord/Discord|Exec=/usr/bin/Discord|' /opt/Discord/discord.desktop
sudo sed -i 's|Icon=discord|Icon=/opt/Discord/discord.png|' /opt/Discord/discord.desktop
sudo cp -r /opt/Discord/discord.desktop /usr/share/applications