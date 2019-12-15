set nocompatible              
filetype off                 


set nospell


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rust-lang/rust.vim'
Plugin 'shirk/vim-gas'
Plugin 'kamykn/spelunker.vim'
call vundle#end()            
filetype plugin indent on

set completefunc=emoji#complete

let g:vim_markdown_folding_disabled = 1
set conceallevel=2
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1


vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
vmap <C-v> <C-r><C-o>+
