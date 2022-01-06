# Linux-Scripts
A simple collection of scripts that i use to boost my workflow.

## Usage
Clone the repository
```
git clone https://github.com/zar-hub/Scripts.git
```
To make the scritps [executable from anywhere](https://www.maketecheasier.com/make-scripts-executable-everywhere-linux/) you can add the folder path to “~/.bashrc”. 
You can open up the “.bashrc” file (it is in your Home directory, but is hidden by default) in your favorite text editor, like gedit.

Go to the very end of the file and add:
```bash
# Add costom path
export PATH="/path_of/the_folder_we/want_to_add_to:$PATH"

# Aliases
alias mapwac="bash mapwac"
```
To register the changes, save the file, exit the text editor and then type in your terminal:
```
source ~/.bashrc
```
To you can execute the scripts just typing in terminal
```
script_name
```

# Scripts
Here is a list with all the availabe scripts with a brief description.
## mapwac
This script is used to map a wacom tablet (or any graphic tablet)
to a specific display in a multi-monitor setup.
Just run the script and select a monitor and everything should just be fine.

# Contributing
When adding a new script remeber to add the alisas in ".bashrc"
