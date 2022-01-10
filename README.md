# DEBIAN lemon flavor

What i want:

- tiling window manager [pop-shell](https://github.com/pop-os/shell)
- minimalist look
- sync useful data across devices with <img src="/repo-img/syncthing.svg" width="100px">
- Git Desktop

## Installation
1. Add you user to sudoers manually with this command:
```
su - root
echo -e "#\nDEBIAN_LEMON_FLAVOR: grant permissions\n yourusername ALL=(ALL) NOPASSWD:ALL" | sudo EDITOR='tee -a' visudo
```
2. The script will automatically reboot. Install alacritty manually:
```
sudo snap install alacritty --classic
```
