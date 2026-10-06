" linux: ~/.vim/vimrc
" windows: ~/vimfiles/vimrc

syntax on
color desert

set nu
set relativenumber

"set cursorline
set laststatus=2

set nobackup
set nowrap

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

set incsearch
set hlsearch

set smartcase
set ignorecase

set showmatch

set fileencoding=utf8
set fileencodings=ucs-bom,utf8,big5,prc
set encoding=utf-8

set path+=**
set wildignore+=**/.git/**
set wildmenu
set showcmd

set hidden

" globals
let g:mapleader=" "
let g:netrw_keepdir=0

" toggle highlighting last search
nnoremap <F3> :set hlsearch!<CR>

" list all buffers and select one
nnoremap <F5> :buffers<CR>:buffer <Space>

" edit todo file
nmap <leader>td :e ~/doc/TODO<CR>
nmap <leader>doc :e ~/doc<CR>

" comment out a statement
nmap <leader>cc ^i//<esc>j^

" edit .vimrc
nmap <leader>rc :e $MYVIMRC<CR>

inoremap <tab> <esc>
inoremap jj <esc>
inoremap <tab> <esc>

nnoremap <esc><esc> :noh<return><esc>

iabbrev <expr> idate strftime("%Y-%m-%d")

" Plugin Manager
" Download plug.vim and put it in the "autoload" directory.
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Include custom config last, so that it can override the default.
let s:custom_dir = fnamemodify($MYVIMRC, ':h')
for f in split(glob(s:custom_dir . '/custom/*.vim'), '\n')
    execute 'source' f
endfor

