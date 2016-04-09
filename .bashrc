# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return
 
# Use case-insensitive filename globbing
shopt -s nocaseglob
 
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell
 
# Aliases
# Default to human readable figures
alias df='df -h'
alias du='du -h'
# Grep
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
 
# Coloring
alias ls='ls -hF --color=auto'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'
alias la='ls -A'
alias l='ls'
LS_COLORS=$LS_COLORS:'di=0;35:no=00:fi=00:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32'
export LS_COLORS
 
 
# Aliases to generate maven archetypes
function gensimple() { mvn archetype:generate -DgroupId=com.geowarin -DarchetypeArtifactId=maven-archetype-quickstart -DartifactId="$1" ;}
function genwebapp() { mvn archetype:generate -DgroupId=com.geowarin -DarchetypeArtifactId=maven-archetype-webapp -DartifactId="$1" ;}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


#Write by usera
alias cs='cygstart.exe'
alias python='/usr/bin/python -i'
#alias cmd='mintty --option Charset=GBK cmd.exe' 

#vim
alias vim='vim -p'


LANG='en_US.UTF-8'

#enable 256 color in vim
sh ~/.vim/gruvbox_256palette.sh

#set python package
#export PYTHONPATH='/cygdrive/d/Anaconda/python27.zip:/cygdrive/d/Anaconda/DLLs:/cygdrive/d/Anaconda/lib:/cygdrive/d/Anaconda/lib/plat-win:/cygdrive/d/Anaconda/lib/lib-tk:/cygdrive/d/Anaconda:/cygdrive/d/Anaconda/lib/site-packages:/cygdrive/d/Anaconda/lib/site-packages/Sphinx-1.3.1-py2.7.egg:/cygdrive/d/Anaconda/lib/site-packages/cryptography-0.9.1-py2.7-win-amd64.egg:/cygdrive/d/Anaconda/lib/site-packages/win32:/cygdrive/d/Anaconda/lib/site-packages/win32/lib:/cygdrive/d/Anaconda/lib/site-packages/Pythonwin:/cygdrive/d/Anaconda/lib/site-packages/setuptools-17.1.1-py2.7.egg'
