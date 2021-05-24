#!/bin/env sh
PACMAN="sudo pacman"

mkdir -p ~/bin
mkdir -p ~/git
(cd ~/git && git clone https://aur.archlinux.org/aurutils.git; cd aurutils && makepkg -si)
#config aur

$PACMAN -S aursync
aur_list="todotxt ly teams aerc include-what-you-use pnpm"
aur sync $aur_list


#subl

essentials="ttf-hack gvfs gvfs-mtp openssh unzip zip xdotool xfce4-screenshooter pass syncthing conky bash-completion xorg-xinit xorg-server vlc htop git wget curl man thunar thunar-volman thunar-archive-plugin xf86-input-libinput"
dev="npm qtcreator qt5-gamepad perf python3 nasm make vim gcc cmake arduino postgresql nginx sqlite3 gmtp"
reverse="gdb ltrace strace upx ropgadget wine valgrind ghidra"
#magic gadget finder
#r2 checksec peda pwndbg
networking="bind ldns net-tools nmap tcpdump gufw wireshark-qt chromium midori iptables"
#scapy
#tor
#burpsuit
#gns3
forenstics="volatility sleuthkit foremost binwalk"
#peepdf
#autopsy
#ewf-tools
others="qemu gimp libreoffice discord"
#stegsolve.jar
#arch32=""
#pip="black pandas numpy scikit-learn r2pipe"

#weechat 
sound="vokoscreen ffmpeg pulseaudio-bluetooth pavucontrol"

pkg_list="$essentials $dev $reverse $networking $forenstics $sound $others"



$PACMAN --needed -S $pkg_list

chmod u+x ~/bin/*

echo '''
Config to do manually :

- config firefox (about:config)
- extensions firefox
- plugin sublime text : jasmin(asm), twig
- config weechat
- cubeide

- download and install:
    - tor        : https://www.torproject.org/download/download-easy.html.en
    - burpsuit   : https://portswigger.net/burp/communitydownload


`select-editor`
firewall profile (g)ufw
shortcut alt+maj : change keyboard layout
arch 32bits
'''
