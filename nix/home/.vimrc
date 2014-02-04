" tabs (use 4 spaces for tabs)
set tabstop=4
set shiftwidth=4
set expandtab

" search (highlight search results)
set hlsearch

" cursor (show Beam for input mode, and Block for normal mode)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" status bar (show line numbers and ruler)
set nu
set ruler

" clipboard
set clipboard=unnamedplus
" map delete to black whole register
" nnoremap d "_d
" vnoremap d "_d
