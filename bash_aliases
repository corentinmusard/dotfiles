# ~/.bash_aliases

alias ls="ls --color=auto"

alias pwndbg="gdb -x /usr/share/pwndbg/gdbinit.py"
alias peda="gdb -x /usr/share/peda/peda.py"
alias webserver="php -S 127.0.0.1:8000 -ddisplay_errors=1"

alias mini_cli_chat="cd ~/usr/doc/dev/c/mini_cli_chat"
alias s4="cd ~/usr/doc/polytech/PEIP/S4"
alias iese="cd ~/usr/doc/polytech/IESE"

alias c='echo "scan-build make
scan-build \${all_check} make
clang-tidy -checks=* *.c *.h
for f in *.c; do include-what-you-use \${f};done
cppcheck --enable=all --inconclusive .
valgrind ./main
clang-check *.c"'

alias all_check="-enable-checker alpha -enable-checker nullability -enable-checker optin -enable-checker osx -enable-checker security"

# not up to date
alias secuflag="-fcf-protection=full -fstack-protector-strong -Wstack-protector -fstack-clash-protection --param
    ssp-buffer-size=4 -pie -fPIE -ftrapv -D_FORTIFY_SOURCE=2 -Wl,-z,relro,-z,now"
