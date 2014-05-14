" tabs (use 4 spaces for tabs)
set tabstop=4
set shiftwidth=4
set expandtab

" search (highlight search results)
set hlsearch

" leave insert mode quickly on <Esc>
" https://powerline.readthedocs.org/en/latest/tipstricks.html
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif  

" cursor (show Beam for input mode, and Block for normal mode)
" works for Konsole and iTerm2 only
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" status bar (show line numbers and ruler)
set nu
set ruler

" clipboard (use system clipboard for default register)
set clipboard=unnamedplus 
