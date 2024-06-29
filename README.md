# personaldev
My own personal dev env setup

## TODO

- [ ] learn TMUX
- [ ] investigate x86 versus arm
- [ ] connect with TMUX
- [ ] create vim env
- [ ] install tools - AWS etc
- [ ] figure out live refresh on right pane for text etc

## Viewing MD Files

To view MD Files
```
mdless README.me
```


## VIM Stuff

|Command | Does What |
|---|---|
|:setlocal foldmethod=manual | Enables manual folding |
| zf | Create fold |
| zd | Delete fold |
| zo | Open fold |


## TMUX Cheatsheet

|Command | Does What |
|---|---|
|Ctrl + b p | Previous Window |
|Ctrl + b n | Next Window |
|Ctrl + b c | New Window |
|Ctrl + b & | Close Window |
|Ctrl + b , | Rename Window |
|Ctrl + b 0..9 | Go To Window |
|Ctrl + b % | Vertical Line Split |
|Ctrl + b " | Horizontal Line Split |
|Ctrl + b q | Select Pane |
|Ctrl + b z | Toggle Pane Zoom |
|Ctrl + b <SPACE> | Toggle Pane Horiz/Vert |


## Vagrant Env

Install vagrant:
```
brew install vagrant qemu
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-qemu
```
Use vagrant file in this repo...

```
vagrant up
vagrant ssh
```

## Git Tricks

|Command | Does |
|---|---|
|git log --follow -p -- <File> | Shows history for that file |
