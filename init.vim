:set number
:set relativenumber
:set autoindent

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin()

Plug 'https://github.com/ThePrimeagen/vim-be-good'

call plug#end()






