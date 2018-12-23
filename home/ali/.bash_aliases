# Start DE
alias xx='startx' 

# Network aliases
alias wanip='curl ipecho.net/plain ; echo' 
alias lanip='ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo ${addr%/*}; done' 

# System aliases
alias rmorph='sudo pacman -Rs $(pacman -Qqtd)' 
alias update='sudo pacman -Syyuu' 
alias systeminfo='inxi -c 5 -b' 
alias archey='archey3' 
alias h='history' 
alias df='df -kTh'
alias sudo='sudo '
alias ipa='ip -br -c a'
alias lock='/home/ali/scripts/i3lock-fancy-rapid 5 3'
alias sleep='/home/ali/scripts/i3lock-fancy-rapid 5 3; systemctl suspend'

# Folders and Files aliases
alias ls='ls --color=auto' 
alias ll='ls -al --color=auto' 
alias lsl='ls -l --color=auto' 
alias rm='rm -i' 
alias cp='cp -i' 
alias mv='mv -i' 
alias mkdir='mkdir -p' 

# Directory navigation aliases
alias cd..='cd ..' 
alias ..='cd ..' 
alias ...='cd ../..' 
alias ....='cd ../../..' 
alias .....='cd ../../../..'

# Other aliases
alias cow='fortune | cowsay'
alias matrix='cmatrix -C cyan'
