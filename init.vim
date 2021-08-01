" Felipe Alves 
" batocciero
" Vim  init.vim configuration
" 15 Junho 2020

set nocompatible
let g:polyglot_disabled = ['markdown']

call plug#begin()

" Theme
Plug 'ayu-theme/ayu-vim' " or other package manager

" Better syntaxe
Plug 'sheerun/vim-polyglot'

" HTML autocomplete
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" Nerd tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Ignoring the files in .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Java Script and HTML syntaxe fixing
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-solargraph']
" Type Script
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" endwise completation
Plug 'tpope/vim-endwise'

Plug 'ervandew/supertab'

call plug#end()

Plug 'ayu-theme/ayu-vim' " or other package manager
"...
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu


set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set tabstop=2
set shiftwidth=2
set expandtab
set confirm
set autoread

" Nerd tree configuration
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Fuzzy Finder configuration
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let mapleader="\<space>"
nnoremap <leader>; A;<esc>

" Clean selected item 
nnoremap <leader>C :noh<cr>

