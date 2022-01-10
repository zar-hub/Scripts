# SECTION ~ Hi
echo "Hi, startup script initialized..."

# SECTION ~ standard update
sudo apt-get update
sudo apt-get upgrade

# SECTION ~ packages
sudo apt-get install git make node-typescript snapd flatpak xournal neovim neofetch preload

# SECTION ~ nvidia driver
sudo apt-get install nvidia-detect
nvidia-detect
#add stuff here

# SECTION ~ pop shell extension https://github.com/pop-os/shell
cd ~
#git clone https://github.com/pop-os/shell.git
#cd shell
#make local-install
rm -r ~/shell

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

# SECTION ~ Theme
cp gtk-3.0/gtk.css ~/.config/gtk-3.0
