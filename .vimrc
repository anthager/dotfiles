" Don't try to be vi compatible

set nocompatible

filetype off

syntax on

filetype plugin indent on
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
nnoremap j gj
nnoremap k gk
set hidden

set ttyfast



" Status bar

set laststatus=2



" Last line

set showmode

set showcmd



set listchars=tab:▸\ ,eol:¬

" Uncomment this to enable by default:

" set list " To enable by default

" Or use your leader key + l to toggle on/off

map <leader>l :set list!<CR> " Toggle tabs and EOL



" Color scheme (terminal)



