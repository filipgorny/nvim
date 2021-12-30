syntax on

" Vim plug
call plug#begin()

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-yaml', 'coc-tailwindcss', 'coc-svg', 'coc-sql', 'coc-stylelintplus', 'coc-sh', 'coc-rls', 'coc-python', 'coc-prisma', 'coc-prettier', 'coc-phpls', 'coc-html', 'coc-go', 'coc-git', 'coc-gist', 'coc-eslint', 'coc-css', 'coc-angular']

filetype indent on
filetype plugin indent on

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" AIR LINE
Plug 'vim-airline/vim-airline'

" Search plugin
Plug 'dyng/ctrlsf.vim'
" Reload vims configuration file
nnoremap confr :source $MYVIMRC<CR>

" Nerd Tree
Plug 'preservim/nerdtree'
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=0

" Typescript
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax

Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
let g:fern#renderer = "nerdfont"

set background=dark

" Initialize plugin system
call plug#end()

autocmd VimEnter * if !argc() | NERDTree | endif

set fillchars+=vert:\ 

set nu
set wildmenu
set wildmode=longest,list,full

" Prettier auto format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Using mouse
set mouse=a

" Remove buffer border
set fillchars=vert:
highlight VertSplit cterm=NONE

" Intend with spaces
set expandtab
set tabstop=2
set shiftwidth=4

