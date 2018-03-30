" Nice to have
syntax on
filetype plugin indent on
set number
" Show statusbar
set laststatus=2



execute pathogen#infect()
"set nocompatible   

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'autoclose.vim'

call vundle#end()


filetype plugin indent on
"Nerd Tree
autocmd VimEnter * NERDTree | wincmd p
"Mapping NerdTree
map <C-n> :NERDTreeToggle<CR>
"Automatically close NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Compile and run c code
"map <C-l> : !node  %  <CR>
let g:syntastic_javascript_checkers = ['jshint']


autocmd Filetype pug setlocal tabstop=2
set list
set listchars=tab:>-     " > is shown at the beginning, - throughout
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let @t = "chicken"
set backspace=indent,eol,start
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

map <C-m> :call ToggleMouse()<CR>


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let g:syntastic_cpp_check_header = 1

