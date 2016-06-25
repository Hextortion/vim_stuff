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
Plugin 'jeetsukumaran/vim-buffergator'

call vundle#end()

filetype plugin indent on

set clipboard=unnamedplus

syntax enable

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

filetype indent plugin on "load filteyp-specific indent files
set autoindent
set showmatch "highlight matching [{()}]
set lazyredraw
set showmode
set mouse=a "enable mouse for all modes
set incsearch "search as characters are entered
set hlsearch "highlight matches
set ignorecase "case insensitive search
set backspace=indent,eol,start
set smartcase "except when using capital letters"
set noswapfile
set shell=/bin/bash

" Leader is comma
let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»\ ,eol:¬

nmap <silent> <leader>b :TagbarToggle<CR>
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>
imap jj <Esc>
nmap <Space> i

" Remove annoying highlight when it is no longer needed
nmap \q :nohlsearch<CR>

" Various settings for working with other people
nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \E :set expandtab tabstop=3 shiftwidth=3 softtabstop=3<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap \K :set expandtab tabstop=8 softtabstop=8 shiftwidth=8<CR>
nmap \k :set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8<CR>

" NERDTree Settings
nmap <silent> <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" TagBar Settings
let g:tagbar_iconchars = ['+', '-']

" Buffergator Settings
nmap <silent> <leader>k :BuffergatorOpen<CR>
nmap <silent> <leader>K :BuffergatorClose<CR>
let g:buffergator_viewport_split_policy='T'
let g:buffergator_hsplit_size=10

" CtrlP Settings
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_use_caching = 1 " enable caching
let g:ctrlp_clear_cache_on_exit=0 " speed up by not removing clearing cache evertime

set guifont=Consolas\ 20
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m

set background=dark
if &t_Co >= 256 || has("gui_running")
    colorscheme solarized
    let g:solarized_italic=0
    let g:solarized_contrast="normal"
    set colorcolumn=81

    " This is to have thin splitting lines
    set fillchars+=vert:│
    hi Vertsplit ctermbg=NONE guibg=NONE
endif


