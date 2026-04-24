; In Windows, put in c:\users\<USER>\.vimrc

syntax on
color desert
language en_US

set nu
set laststatus=2

set statusline=%F       "full path to the file
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

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
set guifontwide=NSimsun:h12

set path+=**
set wildmenu
set showcmd

" autoload/netrw.vim
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro"
let g:netrw_list_hide= '.*\.pyc$,.*\.swp$,^__pycache__'
let g:netrw_liststyle=0 " thin (change to 3 for tree)
let g:netrw_preview=1   " open previews vertically
let g:netrw_winsize=30

" mappings
" toggle highlighting last search
nnoremap <F3> :set hlsearch!<CR>
" list all buffers and select one
nnoremap <F5> :buffers<CR>:buffer <Space>
" alias to jump to mark
nnoremap <space> `

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap <C-e> :e#<CR>
nmap j gj
nmap k gk

inoremap # X#

imap jj <esc>
imap jk <esc>
imap kk <esc>
imap kj <esc>

" gui
set guioptions-=T
set guioptions-=m
set guifont=Monospace\ 15
" set guifont=Lucida_Console:h12:cANSI

" python
ab ppp import pdb; pdb.set_trace()<esc>
ab ppu import pudb; pudb.set_trace()<esc>

