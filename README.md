# Vimrc

This is my vimrc. to install it just clone it with git and then run 'setup.sh'
It should handle everything for you :) 
**warning** not tested on windows 

## Requirements and Install
All of these dependancies are REQUIRED in order to use YouCompleteMe, if you do not want to use this you can disregard this section, but make sure you remove the youcompleteme from setup.sh and from the vimrc. 
- CMake
- python3-dev
- build-essential
- clang

### Install
install is pretty easy, just run `setup.sh`, and let it copy over the files and compile YouCompleteMe, after this is done when you first open vim run `:PlugInstall`


## Key Parts of my Setup 

### Nerd Tree
Nerd Tree is a file explorer that makes using vim much more efficient so you don't have to open and close it every time you want to edit a different file! 
To open Nerd Tree just press `Control + n`

### Comment City
If you press `c` in any C file (or C like file) while in Normal mode it will automatically drop you to a new line with `//` already put in place for you. 

### YouCompleteMe
YouCompleteMe is an autocompletion system build for VIM, it works very nicely all you have to do is start typing what you want to type and press tab at any point and it will give a drop down of all possible matching names that apply. You can either tab through them or press `Control + n` to go through it. 



