# dotfiles
My personal dotfiles. Made with `dotbot`. Config file is `install.conf.yaml`. Install with `./install`.

| Category | Tool | Description |
|----------|------|-------------|

## Productivity

| | | |
|-|-|-|
| mail | aerc |
| calendar | khal
| contact | khard
| todo list | todo_sh
| sync calendar and contact | vdirsyncer
| sync files | syncthing | to share file easily between my computer and my phone

## Desktop environnement
-   i3 
-  `sudo lightdm-gtk-greeter-settings` to change the login screen and to display [bg.jpg](img/bg.jpg)

### Background
| | | |
|-|-|-|
| image | feh | Display [tech_bg.jpg](img/tech_bg.jpg)
| bar | i3status | Display system info every 5sec
| utilities terminals | conky | Use 3 conky terminal. On the top left display todolist. On the bottom left display calendar. On the right display useful information.

## Terminal
| | | |
|-|-|-|
| terminal | xfce4-terminal | 
| shell config | bashrc | settings and some useful shortcut like swapusage
| shortcuts | bash_aliases | 

## Editor
| | | |
|-|-|-|
| editor | subl | fast and lightweight text editor
| git editor | subl-merge | easier than git in CLI

## Dev dotfiles
| | | |
|-|-|-|
| java | gradle.properties | Limit the ram usage
| gdb | gdbinit | intel > A&T
| git | gitconfig | signing settings

## Misc
-   user-dirs: default dirs
-   police Hack: pacman -S ttf-hack

## PGP
-   public.key: public old pgp key used in github
-   public_ed255519.key: current pgp used in github

## SSH
-   id_rsa: key used in github
-   id_rsa_woozi: key used to connect to woozi server
-   id_ed25519_alwaysdata_perso: key to connect to a personal server

## TODO
-   config firefox
-   /root/.bashrc
-   archlinux.md
-   screenshot

## aur git/
-   aerc
-   include-what-you-use
-   pnpm
