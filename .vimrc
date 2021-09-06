set nocompatible
set path+=**
set encoding=UTF-8

""" VIMPLUG update
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS {{{

call plug#begin() "vim-plug section

" Themes

Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'lifepillar/vim-solarized8'

" UI

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'

" Search

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Language Support

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'godlygeek/tabular' "is necessary for and must load before markdown
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'

" Git

Plug 'tpope/vim-fugitive'
"Plug 'Xuyuanp/nerdtree-git-plugin'

" Candy

Plug 'edkolev/tmuxline.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' "must load last

""" END PLUGIN SECTION
call plug#end()
" }}}

" OPTIONS {{{

filetype plugin indent on
set wildmenu
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=79
set autoindent
set fileformat=unix
set backspace=2
set nobackup
set nowritebackup
set noswapfile
set ruler
set showcmd
set cmdheight=2
set updatetime=250
set shortmess+=c
set signcolumn=number
set incsearch
set laststatus=2
set autowriteall
set number
set relativenumber
set numberwidth=4
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000
set splitright
set splitbelow
set spelllang=en,de
set ignorecase
set smartcase
set hidden
set shell=/bin/bash
set ttyfast
set lazyredraw
set ttymouse=xterm2
set mouse=a
set foldmethod=indent
set foldlevel=99
set cursorline
set cursorlineopt=number
" }}}

" MAPPINGS {{{

" vimrc access
nnoremap <leader>ev :vsp ~\.vimrc
nnoremap <leader>sv :source ~\.vimrc <bar> :doautocmd BufRead<CR>

" better split nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fold on space
nnoremap <space> za

" TAB for next buffer, CTRL+X deletes buffer
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>

" plugins
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>g :Goyo<CR>

" }}}

" STARTIFY {{{

let g:startify_fortune_use_unicode = 1
let g:startify_custom_header = ['Get shit done']
let g:startify_commands = [{'p': ':PlugUpdate'}]

" }}}

" FILETYPE-SPECIFIC {{{

au BufNewFile,BufRead *.js,*.htm,*.html,*.json,*.css,*.svelte
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" }}}

" AIRLINE {{{

let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_theme='dracula'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" }}}

" FZF {{{

let g:fzf_preview_window = []

" }}}

set t_Co=256
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme dracula
set background=dark

" vi:foldmethod=marker:foldlevel=0
