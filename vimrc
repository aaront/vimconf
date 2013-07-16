set nocompatible

" NeoBundle
if has('win32') || has('win64')
    if has('vim_starting')
        set runtimepath+=~/vimfiles/bundle/neobundle.vim/
    endif
    call neobundle#rc(expand('~/vimfiles/bundle/'))
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

NeoBundle 'chriskempson/base16-vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'wookiehangover/jshint.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'ervandew/supertab'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'marijnh/tern_for_vim'

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
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
set background=dark
colorscheme base16-solarized
