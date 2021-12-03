" debian
runtime! debian.vim

" start up checking
if filereadable(expand('$VIMRUNTIME/defaults.vim'))
	unlet! g:skip_defaults_vim
	source $VIMRUNTIME/defaults.vim
endif



" basic settings
syntax on
set number	"show line numbers
set wildmenu	"enable a menu that shows tab completion options in the status bar
set showmatch	"highlights matching brackets on cursor hover
set ruler	"show cursor position in status bar
set showcmd	"shows the normal mode command before it gets executed
set nowrap  "eliminate line wraping

set encoding=utf-8

set hlsearch	"highlights searches
set incsearch	"incremental search (searches character by character)
set ignorecase	"ignores the case of a search
set smartcase	"only ignores case if there are no capital letters in search

set tabstop=2		"the amount of spaces that vim will equate to a tab character
set softtabstop=2	"like tabstop, but for editing operations (insert mode)
set expandtab		"tabs will expand to whitespace characters
set shiftwidth=2    "indenting is 4 spaces"
set autoindent      "turns on autoindent"
set smartindent     "does the right thing in programs"
set cindent         "stricter rules for C programs"



" vim plug
" call plug#begin('~/.vim/plugged')

" fuzzy finder
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'

" file manager
" Plug 'francoiscabrol/ranger.vim'

" auto closing
" Plug 'chun-yang/auto-pairs'

" syntax highlighting
" Plug 'sheerun/vim-polyglot'

" code completion (run ':CocInstall coc-tabnine' for better completion)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" code linting
" Plug 'dense-analysis/ale'

" call plug#end()



" key bindings
:nmap <F2> :Files<CR>
:nmap <F3> :Ranger<CR>
