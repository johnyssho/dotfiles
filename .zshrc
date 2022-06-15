# Lines configured by zsh-newuser-install

export EDITOR='nvim'
export VISUAL='nvim'

PS1='%n@%m %F{red}%/%f $ '
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
bindkey -v
alias dmenu='dmenu -fn "Nerd Hack Font" -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
alias ls='ls --color=auto'
alias lsd='ls -lhr --color=auto'
alias pacin='sudo pacman -S'
alias pacup='sudo pacman -Syyu'
alias pacrm='sudo pacman -Rsc'
alias keys='vim ~/.config/sxhkd/sxhkdrc'
alias mpv='devour mpv'
alias ndmpv='mpv'
alias qview='devour qview'
alias sxiv='devour sxiv'
alias zathura='devour zathura'
alias fixw='nitrogen --set-zoom-fill $(cat ~/.bck)'
alias dw='cd ~/Downloads'
alias music='cd ~/Music'
alias dc='cd ~/Documents'
alias vim='nvim'
alias headp='echo "power on" | bluetoothctl ; echo "scan on" | bluetoothctl ; sleep 2;  echo "connect 2C:FD:B3:E6:C7:66" | bluetoothctl'
alias grep='grep --color="auto"'
alias vcon='vim ~/.config/nvim/init.vim'
alias zcon='vim ~/.zshrc'
alias con='cd ~/.config'
alias s='sudo systemctl'
alias whatkey="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias z='zathura'
alias hh='history 100 | fzf'
alias pl='mpv "$(ls * | fzf)"'
alias record='ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac screen.mp4'
alias records='ffmpeg -f x11grab -video_size 1366x768 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac screen.mp4'
alias nf='neofetch'
alias png='ping google.com'
alias syncw='rsync -rtvzP ~/work/zola/test/templates/juice/public/ root@jbrod.cz:/var/www/johnyssho/'
alias synccgi='rsync -rtvzP ~/work/cgi/* root@jbrod.cz:/var/www/johnyssho/cgi-bin/'



# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ${(q-)PWD}/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#fm6000
