syntax on

" Vim plug
call plug#begin()

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-yaml', 'coc-tailwindcss', 'coc-svg', 'coc-sql', 'coc-stylelintplus', 'coc-sh', 'coc-rls', 'coc-python', 'coc-prisma', 'coc-prettier', 'coc-phpls', 'coc-html', 'coc-graphql', 'coc-go', 'coc-git', 'coc-gist', 'coc-eslint', 'coc-css', 'coc-angular']

filetype indent on
filetype plugin indent on

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" AIR LINE
Plug 'vim-airline/vim-airline'

" Nerd Tree
Plug 'preservim/nerdtree'
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=0

Plug 'ayu-theme/ayu-vim' 
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme

"Plug 'srcery-colors/srcery-vim'
"colorscheme srcery

" Typescript
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax

" Initialize plugin system
call plug#end()

colorscheme ayu

autocmd VimEnter * if !argc() | NERDTree | endif

set fillchars+=vert:\ 

set nu
set wildmenu
set wildmode=longest,list,full

~
~

