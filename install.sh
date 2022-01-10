# SECTION ~ Hi
echo "Hi, startup script initialized..."

# SECTION ~ sudoers privileges
echo "Adding your user to sudoers... Currently the only user that will be added is 'zar'"
su -
echo -e "# DEBIAN_LEMON_FLAVOR: grant permissions\nzar ALL=(ALL) NOPASSWD:ALL" >> file.txt

# SECTION ~ Syncthing https://apt.syncthing.net/ 
# Add the release PGP keys:
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
# Add the "stable" channel to your APT sources:
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
# Add the "candidate" channel to your APT sources:
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list
# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing
