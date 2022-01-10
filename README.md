# DEBIAN lemon flavor

What i want:

- tiling window manager [pop-shell](https://github.com/pop-os/shell)
- minimalist look
- sync useful data across devices with <img src="/repo-img/syncthing.svg" width="100px">
- Git Desktop
- xournal
- ms teams
- todoist
- alacritty

## Installation
1. Add you user to sudoers manually with this command:
```
su - root
echo -e "#\nDEBIAN_LEMON_FLAVOR: grant permissions\n yourusername ALL=(ALL) NOPASSWD:ALL" | sudo EDITOR='tee -a' visudo
```
2. Launch the script
```
./install.sh
```
3. The script will automatically reboot. Install other packages:
```
./packages.sh
```

## Theme
#82FB6C
