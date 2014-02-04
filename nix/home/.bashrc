# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

alias vim='gvim -v'
alias pyg='pygmentize -g'

set -o vi
#export JAVA_HOME=/usr/lib64/jvm/java-1.7.0-openjdk-1.7.0
export IDEA_JDK=/usr/java/default
export SVN_MERCH=http://svn.mt.local/repos/merch

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

test -s ~/.alias && . ~/.alias || true

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/stephen.swensen/.gvm/bin/gvm-init.sh" ]] && source "/home/stephen.swensen/.gvm/bin/gvm-init.sh"
