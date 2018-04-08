
#aliases
alias ls='ls -G'
alias h='history'
alias hh="history -c && echo '' > ~/.bash_history"
alias ll='ls -alG'
alias lr='ls -GR'

extract (){
  if [-f $1 ]; then
    case $1 in
      *.tar.bz2)  tar xjf $1;;
      *.tar.gz)   tar xzf $1;;
      *.bz2)      bunzip2 $1;;
      *.rar)      unrar e $1;;
      *.gz)       gunzip $1;;
      *.tar)      tar xf $1;;
      *tbz2)      tar xjf $1;;
      *.tgz)      tar xzf $1;;
      *.zip)      unzip $1;;
      *.Z)        uncompress $1;;
      *.7z)       7z x $1;;
      *)          echo "'$1' can not be extrated via extract()";;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#find memory hogs;
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#find cpu hogs;
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#Networking aliases
alias myip='curl icanhazip.com'
alias openPorts='sudo lsof -i | grep LISTEN'
alias cleanupDS="find . -type f -name '*DS_Store' -ls -delete"

