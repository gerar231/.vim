set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
    " set encoding for YouCompleteMe
    set encoding=utf-8
    let g:ycm_confirm_extra_conf = 0 
    nnoremap <F1> :YcmCompleter GetDoc<CR>

Plug 'tmhedberg/SimpylFold'
    " Enable folding
    set foldmethod=indent
    set foldlevel=99
    " Enable folding with the spacebar
    nnoremap <space> za
    " Enable docstrings for folded code
    let g:SimpylFold_docstring_preview=1

Plug 'vim-syntastic/syntastic'
    let g:syntastic_python_checkers = ['pylint'] 
    nnoremap <F3> :SyntasticCheck<CR>
    let g:syntastic_mode_map = {
            \ "mode": "passive",
            \ "active_filetypes": [],
            \ "passive_filetypes": [] }

Plug 'scrooloose/nerdtree'
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

Plug 'google/vim-colorscheme-primary'

Plug 'rakr/vim-togglebg'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Initialize plugin system
call plug#end()
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

" Default split direction
set splitbelow
set splitright

" Use current background color to clear the screen
set t_ut=

" Solarized Config script
set t_Co=256 
set background=dark
colorscheme primary 

" Toggle Dark/Light via f5
call togglebg#map("<F5>")

" Remove all trailing whitespace by pressing F5
nnoremap <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
