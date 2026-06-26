syntax on
color desert

set nu
"set relativenumber

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
set wildmenu
set showcmd

" mappings
let g:mapleader=" "
let g:netrw_keepdir=0

" toggle highlighting last search
nnoremap <F3> :set hlsearch!<CR>
" list all buffers and select one
nnoremap <F5> :buffers<CR>:buffer <Space>

" nmap <C-n> :bnext<CR>
" nmap <C-p> :bprev<CR>
" nmap <C-e> :e#<CR>
nmap <leader>tt :e ~/doc/TODO<CR>
imap jj <esc>

" Plugin Manager
" Download plug.vim and put it in the "autoload" directory.
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

