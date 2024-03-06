"==================Plugin Settings==================
set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'joshdick/onedark.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sainnhe/everforest'
Plugin 'ryanoasis/vim-devicons'
Plugin 'preservim/nerdtree'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required

"====================VIM Settings===================
set number
syntax on
colorscheme everforest 
"set background transparent
hi Normal guibg=NONE ctermbg=NONE

"====================Mapping Keys===================

"Split navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Autocomplete
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"====================Terminal Settings===================

nnoremap <C-T> :botright terminal<CR>
set termwinsize=8x0
hi Terminal guibg=NONE ctermbg=NONE guifg=blue


"====================NERDTree Settings===================

nnoremap <C-p> :NERDTreeToggle<CR>
let g:NERDTreeFileLines = 1
"let NERDTreeShowHidden=1
"let g:webdevicons_enable_nerdtree = 1
set encoding=UTF-8
"let g:webdevicons_enable = 1
set guifont=Hack\ Nerd\ Font\ 15
let &guicursor = substitute(&guicursor, 'n-v-c:', '&blinkon0-', '')
let g:NERDTreeWinPos = "right"

"====================Python files config===================
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let g:jedi#force_py_version = 3

"====================Powerline config===================

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2

"====================Yaml files config===================

set ts=2
set sw=2
set et
set ai

"====================HTML files config===================

autocmd FileType html 
set omnifunc=htmlcomplete#CompleteTags

inoremap <div> <div></div><Esc>ha
inoremap <h1>  <h1></h1><Esc>ha
inoremap <h2>  <h2></h2><Esc>ha
inoremap <h3>  <h3></h3><Esc>ha
inoremap <p>   <p></p><Esc>ha
inoremap <body> <body></body><Esc>ha



