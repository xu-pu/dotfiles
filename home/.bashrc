# power line
#. /usr/lib/python3.3/site-packages/powerline/bindings/bash/powerline.sh

# environment variables
export LANG='en_US.UTF-8'

# archive functions

extract () {
# format: extract [archive]
    case $1 in
	*.zip)     unzip    $1 ;;
	*.tar)     tar xvf  $1 ;;
	*.tar.gz)  tar zxvf $1 ;;
	*.tar.bz2) tar jxvf $1 ;;
	*.tar.xz)  tar Jxvf $1 ;;
	*) echo "archive type is not supported!" ;;
    esac
}

pack () {
# format: pack [tar|targz|tarbz2] [directory]
    case $1 in
	tar) tar cvf $2.tar $2 ;;
	tar.gz) tar zcvf $2.tar.gz $2 ;;
	tar.bz2) tar jcvf $2.tar.bz2 $2 ;;
	*) echo "$1 is not a supported archive type!" ;;
    esac
}


#defaults
alias emacs='emacs -nw'
alias du='du -h'
alias df='df -h --total'
alias rsync='rsync -v -e ssh --progress'
alias dstat='dstat -cdlmnpsy'

# git alias
alias gitlog='git log --oneline --decorate'
alias gitstate='git status -sb'
alias gll='git branch -av'

# alias
alias ll='ls -lh --color'
alias lla='ls -lah --color'
alias dfa='df -ha --total'

# less search
alias lll='ls -lh --color | less -R'
alias llla='ls -lha --color | less -R'

# search
lpac () { yaourt --color -Ss $1 | less -R ; }
laur () { yaourt --color --aur -Ss $1 | less -R ; }

# GFW functions
alias sshtunnel='ssh -v -TND 7070 sheep@ptx-root.me &'

# Bug
stopgpe () {
    echo disable > /sys/firmware/acpi/interrupts/gpe18 2>/dev/null
}
