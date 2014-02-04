set nocompatible

" NeoBundle
if has('win32') || has('win64')
    if has('vim_starting')
        set runtimepath+=$HOME/vimfiles/bundle/neobundle.vim/
    endif
    call neobundle#rc(expand('$HOME/vimfiles/bundle/'))
else
    if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif
    call neobundle#rc(expand('~/.vim/bundle/'))
endif


" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

NeoBundle 'junegunn/seoul256.vim'
" NeoBundle 'chriskempson/base16-vim'
" NeoBundle 'tomasr/molokai'
NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'Shutnik/jshint2.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'ervandew/supertab'
NeoBundle 'Raimondi/delimitMate'
" NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'tristen/vim-sparkup'
" NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'tpope/vim-vinegar'

filetype plugin indent on	" Required!

" Installation check
NeoBundleCheck

" Editing
set modelines=0

" Tabing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Improvements
set encoding=utf-8
set showmode
set hidden
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set relativenumber
set undofile
set splitright

" Mappings
let mapleader=","
nnoremap ; :

" Searching/Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set hlsearch
noremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>w <C-w>v<C-w>l

" Lines
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" Colours
colo seoul256

" Airline
let g:airline_powerline_fonts = 1
