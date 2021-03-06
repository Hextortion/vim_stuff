set nocompatible

scriptencoding utf-8
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'

call vundle#end()

filetype plugin indent on

set clipboard=unnamedplus

syntax enable

set linebreak "don't break words in middle of the line
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set shiftwidth=4
set autoindent
set smarttab
set expandtab "tabs are spaces"
set number "show line numbers
set autoread "automatically reread changed files without asking anything
set laststatus=2
set splitright
set splitbelow
set ruler

filetype indent plugin on "load filteyp-specific indent files
set autoindent
set showmatch "highlight matching [{()}]
set lazyredraw
set ttyfast
set ttimeoutlen=100
set showmode
set mouse=a "enable mouse for all modes
set incsearch "search as characters are entered
set hlsearch "highlight matches
set ignorecase "case insensitive search
set backspace=indent,eol,start
set smartcase "except when using capital letters"
set noswapfile
set shell=/bin/bash

set tags=tags;

" Leader is comma
let mapleader=","

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>
set nolist

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»\ ,space:·
" The below line is just in case space is not supported
" set listchars=tab:»\ ,eol:¬

nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <leader>b :TagbarToggle<CR>
nnoremap <silent> ,ev :e $MYVIMRC<CR>
nnoremap <silent> ,sv :so $MYVIMRC<CR>
inoremap jj <Esc>
nnoremap <Space> i
nnoremap <leader>a :Ack!  .<left><left>
nnoremap <leader>z :Ack!<CR>
nnoremap <PageDown> 10<C-E>
nnoremap <PageUp> 10<C-Y>

" Remove annoying highlight when it is no longer needed
nnoremap \q :nohlsearch<CR>

" Various settings for working with other people
nnoremap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \n :set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \E :set expandtab tabstop=3 shiftwidth=3 softtabstop=3<CR>
nnoremap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nnoremap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nnoremap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nnoremap \K :set expandtab tabstop=8 softtabstop=8 shiftwidth=8<CR>
nnoremap \k :set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8<CR>

" NERDTree Settings
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" TagBar Settings
let g:tagbar_iconchars = ['+', '-']
let g:tagbar_compact = 1

" CtrlP Settings
" Use the working directory for this, all other options are very annoying
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_use_caching = 1
" Speed up by not removing clearing cache evertime
let g:ctrlp_clear_cache_on_exit=0 
let g:ctrlp_max_files=0

" GVim specific options
set guifont=Terminus\ 11
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
set guioptions-=e

set background=dark
if has("gui_running")
    colorscheme distinguished
    let g:solarized_italic=0
    let g:solarized_contrast="low"
    set colorcolumn=80

    " Airline Settings
    let g:airline_theme='distinguished'

    " This is to have thin splitting lines
    set fillchars+=vert:│
    " hi Vertsplit ctermbg=NONE guibg=NONE
else
    colorscheme distinguished
    set fillchars+=vert:\ 
    let g:airline_theme='distinguished'
    set colorcolumn=80
endif

let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Ack Settings
if executable('ag')
    let g:ackprg = 'ag -U -i'
endif

