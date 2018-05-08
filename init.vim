" ========== Plugins ==========

call plug#begin('~\AppData\Local\nvim')

Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pbrisbin/vim-mkdir'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug '907th/vim-auto-save'
Plug 'andreypopp/vim-colors-plain'
Plug 'minodisk/nvim-finder', { 'do': ':FinderInstallBinary' }
Plug 'vim-airline/vim-airline-themes'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'romainl/flattened'

"" ========== Fuzzy Finder ==========

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

"" ========== Language ==========

Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" ========== NerdTree ==========
Plug 'https://github.com/scrooloose/nerdtree.git'
"" ========== Color ==========


call plug#end()



" ========== Pure Vim ==========

augroup Rc
	autocmd!
augroup END

set autoread
set nobackup
set nolazyredraw
set nowritebackup
set swapfile
set tildeop
set ttyfast
set visualbell
set wildmenu
set wildmode=full
filetype plugin indent on
autocmd Rc BufWinEnter * set mouse=

"" ========== Space Setting ==========

set autoindent
set list
set shiftround
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2

"" ========== Appearance ==========

syntax on
set termguicolors
set title
set backspace=indent,eol,start
set colorcolumn=80
set completeopt=menu
set cursorline
set hlsearch
set inccommand=nosplit
set incsearch
set number
set shortmess=a
set showcmd
set showmatch
set showmode
set splitbelow
set splitright
set wrap

"" ========== Keymaps ==========

let g:mapleader = "\<space>"

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k
nnoremap <esc><esc> :nohlsearch<cr>
nnoremap Y y$

inoremap jk <Esc>

" ========== Plugin Settings ==========

"" ========== Deoplete ==========

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"


"" ========== Auto-pairs ==========

let g:AutoPairsMapCh = 0
let g:AutoPairsMapCR = 0


"" ========== Fzf ==========

nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :History:<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>m :Maps<cr>
nnoremap <leader>r :Ag<cr>

"" ========== Airline ==========
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'hybrid'


"" ========== Autoformat ==========


"" ========== Auto-save ==========

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1


"" ========== Lightline ==========

"" ========== Python ==========
let g:python3_host_prog = 'D:\Programme\Anaconda\python.exe'


"" ========== Colorscheme ==========

set background=dark
colorscheme hybrid_material
