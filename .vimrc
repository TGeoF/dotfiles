set nocompatible
set path+=**

" PLUGINS {{{
""" VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""" START PLUGIN SECTION

"Plugin 'gmarik/Vundle.vim' "pacman deals w/ vundle
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim' "gc command for comments
Plugin 'tmhedberg/SimpylFold' "makes folding behave more naturally
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'konfekt/fastfold'
Plugin 'mhinz/vim-startify'
Plugin 'jeffkreeftmeijer/vim-dim'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'
Plugin 'psliwka/vim-smoothie'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

""" END PLUGIN SECTION
call vundle#end()
" }}}

" SETTINGS {{{
filetype plugin indent on
"set t_Co=256
set wildmenu
syntax on
set background=dark
let python_highlight_all=1
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
set incsearch
"set hlsearch
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

"different behaviour for web stuff
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set shell=/bin/bash
set ttyfast
set lazyredraw
" }}}

" MAPPINGS {{{

"vimrc stuff
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc <bar> :doautocmd BufRead<CR>

"better split nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"fold on space
nnoremap <space> za
"
" }}}

" FILEBROWSING {{{

"integrated filebrowser stuff (netrw)
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide.= ',\(^\|\s\s\)\zs\.\S\+'

"nerdtree stuff
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFind<CR>
let NERDTreeShowHidden = 1

" }}}

"SYNTASTIC {{{

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1

" }}}

" STARTIFY {{{

let g:startify_fortune_use_unicode = 0
let g:startify_custom_header = ['Be productive today', 'Get shit done']
let g:startify_commands = [{'p': ':PluginUpdate'}]

" }}}

" AIRLINE {{{

let g:deus_termcolors = 16
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" }}}

" FOLDING {{{

set foldmethod=syntax
set foldlevel=99

" }}}

colorscheme jellybeans

" vim:foldmethod=marker:foldlevel=0
