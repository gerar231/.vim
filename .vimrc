set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/plugins')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
Plugin 'Valloric/YouCompleteMe'
    " set encoding for YouCompleteMe
    set encoding=utf-8
    let g:ycm_confirm_extra_conf = 0 

Plugin 'tmhedberg/SimpylFold'
    " Enable folding
    set foldmethod=indent
    set foldlevel=99
    " Enable folding with the spacebar
    nnoremap <space> za
    " Enable docstrings for folded code
    let g:SimpylFold_docstring_preview=1

Plugin 'vim-syntastic/syntastic'
    let g:syntastic_python_checkers = ['pylint'] 

Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
    " Nerd Tree Key mapping
    map <C-n> :NERDTreeToggle<CR>

    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "*",
        \ "Staged"    : "+",
        \ "Untracked" : "!",
        \ "Renamed"   : "@",
        \ "Unmerged"  : "U",
        \ "Deleted"   : "X",
        \ "Dirty"     : "~",
        \ "Clean"     : "-",
        \ 'Ignored'   : '$',
        \ "Unknown"   : "?"
        \ }

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax on
 
" Global 80 character column
set colorcolumn=80
highlight ColorColumn ctermbg=LightGray

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Display line numbers on the left
set number

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

"default split direction
set splitbelow
set splitright


"Use current background color to clear the screen
set t_ut=
" Solarized Config script
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" Solarized toggle Dark/Light via f5
call togglebg#map("<F5>")

