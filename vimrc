set nocompatible

" enable syntax highlighting
syntax on

" intuitive backspacing
set backspace=indent,eol,start

"indent settings
set shiftwidth=2 " number of spaces used for (auto)indent
set expandtab " use soft tabs (spaces)
set softtabstop=2 " size of soft tabs
set autoindent " auto indent lines
set smartindent " smart (language based) auto indent "

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Vundle starts
call vundle#begin()

" Vundle manage plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'     " Elixir syntax
Plugin 'rhysd/vim-crystal'          " Crystal syntax
Plugin 'fatih/vim-go'               " Go support with a log of features
Plugin 'vim-airline/vim-airline'    " Beautify bottom info
Plugin 'tpope/vim-surround'	    " Vim surround
Plugin 'kien/ctrlp.vim'		    " Fuzzy finder for files, buffer and others
Plugin 'ack.vim'

Plugin 'ntpeters/vim-better-whitespace' "Plugin for white space trim an so on.
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin on
filetype indent on

" Set solarized as theme and make it work on terminal.
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let &colorcolumn=80

" change leader key
let mapleader=" "

" save keystrokes, so we don't need to press the Shift key
nnoremap ; :

" Opens NERDTree automatically when starts.
autocmd vimenter * NERDTree

" Strip all whitespaces in all type files by default
autocmd BufEnter * EnableStripWhitespaceOnSave

" List Ctrl+P buffers
nmap <silent> <leader>be :CtrlPBuffer<CR>

" CtrlP mappings for rails
map <leader>gv :CtrlPClearCache<cr>\|:CtrlP app/views<cr>
map <leader>gc :CtrlPClearCache<cr>\|:CtrlP app/controllers<cr>
map <leader>gm :CtrlPClearCache<cr>\|:CtrlP app/models<cr>
map <leader>gh :CtrlPClearCache<cr>\|:CtrlP app/helpers<cr>
map <leader>gl :CtrlPClearCache<cr>\|:CtrlP lib<cr>
map <leader>gp :CtrlPClearCache<cr>\|:CtrlP public<cr>
map <leader>gs :CtrlPClearCache<cr>\|:CtrlP spec<cr>

map <leader>n :NERDTreeToggle<cr>

set autoindent
set nu
