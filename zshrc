export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ohmyzsh="mate ~/.oh-my-zsh"
alias qtrvsim='qtrvsim_gui'
alias akku='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk "/energy-full:/ || /energy-full-design:/ {print}" | awk '\''NR==1{full=$2} NR==2{design=$2; printf "energy-full: %s Wh\nenergy-full-design: %s Wh\nhealth: %.1f%%\n", full, design, (full/design*100)}'\'''
alias run='swaymsg exec'
alias digital='java -jar $HOME/Downloads/Digital/Digital.jar'
alias update-all='sudo dnf upgrade --refresh && flatpak update -y && fwupdmgr get-updates && fwupdmgr update'
alias zapzap='flatpak run com.rtosta.zapzap'

fastfetch

export PATH="$PATH:$HOME/.local/bin"
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export EDITOR=nano
export TERMINAL="kitty"
export SYSTEMC_HOME=/usr/local/systemc
export LD_LIBRARY_PATH=$SYSTEMC_HOME/lib-linux64:$LD_LIBRARY_PATH
