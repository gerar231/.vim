" Enable syntax highlighting
"syntax on

" Display the cursor position on the last line of the screen or in the status
" line of a window
"set ruler

" Display line numbers on the left
"set number

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set colorcolumn=80
"highlight ColorColumn ctermbg=DarkBlue

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
