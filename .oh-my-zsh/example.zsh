# Add yourself some shortcuts to projects you often work on

#gmail accounts
#korpzone@gmail.com
alias muttkp='mutt -F ~/.muttrc_kp'

#emile.swarts123@gmail.com
alias muttem='mutt -F ~/.muttrc_em'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -al'

#alias ack='ack-grep'

#take notes
alias note='vim ~/notes/client.txt'
alias tig='/usr/local/bin/tig'

#for sshfs
alias lhomer='~/remoteserv/HOMER'
alias lbrix='~/remoteserv/BRIX'

#vimrecordsession
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

alias emacs='/usr/local/bin/emacs -nw'

#cd
alias ..='../'
alias ...='../../'
alias ....='../../../'

alias xx='exit'
alias c='clear'

alias oo='thunar ./'

alias wtf='mtr google.com'
alias vw='ristretto'
alias pdf='epdfview'
alias later='sudo shutdown -h now'
alias fbprint='lp -d Brother_MFC_9465CDN '
alias please='sudo'
alias p='ps aux |grep'
alias stopapache='/Applications/MAMP/bin/stop.sh'
alias startapache='/Applications/MAMP/bin/start.sh'
alias tu='top -o cpu'
alias tm='top -o vsize'
alias dir="ls -d */"
alias mymy='mysql -u emile -p'
alias tm='tmuxinator'
alias sshec='ssh emile@54.228.237.168'
alias tm="tmux -u2"
alias dir="ls -d */"
alias mymy='mysql -u emile -p'
alias n='z'
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgr='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log restart'
alias n='python ~/bin/spotify.py n'
alias p='python ~/bin/spotify.py p'
alias :q='echo dont be a loser'
alias vmcupdate=''
alias cdo='cd ~/vagrant-dev/www/on-running/'
alias x='exit'

#git
alias gst='git status'
alias gdc='git diff --cached'
alias gd='git diff'
alias gp='git push origin head'
alias gsh='git show -p HEAD'
alias gsq='git rebase -i HEAD~2'
alias gca='git commit --amend'

alias vssh='vagrant ssh -- -t "cd /var/www/${PWD##*/}; bash"'
alias smashit='git add .; git commit -m "wip"; git push'
