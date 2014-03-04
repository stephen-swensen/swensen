set -o vi
export EDITOR=/usr/bin/vim

# workaround lack of system clipboard access in opensuse's standard vim install
alias vim='gvim -v'
# like cat but with syntax highlighting
alias pyg='pygmentize -g'
