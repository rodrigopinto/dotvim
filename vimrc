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


" Configure vim Netrw like NERDtree
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Vundle starts
call vundle#begin()

" Vundle manage plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'     " Elixir syntax
Plugin 'vim-airline/vim-airline'    " Beautify bottom info
Plugin 'tpope/vim-surround'	    " Vim surround
Plugin 'kien/ctrlp.vim'		    " Fuzzy finder for files, buffer and others
Plugin 'mileszs/ack.vim'

Plugin 'ntpeters/vim-better-whitespace' "Plugin for white space trim an so on.
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin on
filetype indent on

" Set solarized as theme and make it work on terminal.
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" change leader key
let mapleader=" "

" save keystrokes, so we don't need to press the Shift key
nnoremap ; :

nmap <silent> <leader>be :CtrlPBuffer<CR>

" Strip all whitespaces in all type files by default
autocmd BufEnter * EnableStripWhitespaceOnSave

set autoindent
set nu
