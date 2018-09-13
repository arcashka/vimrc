set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set textwidth=120
syntax on
set tabstop=4
set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
set list
set number
set background=dark
set termguicolors
set laststatus=2
set incsearch
set hlsearch

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:NERDTreeMapOpenSplit = 'h'
let g:NERDTreeMapPreviewSplit = 'gh'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:solarized_use16 = 0
let g_solarized_contrast = 'low'
let g_solarized_visibility = 'low'

colorscheme solarized8

map <C-G> : YcmCompleter GoTo<CR>
map <C-n> : NERDTreeToggle<CR>
nnoremap <silent> <C-Right> : bn<CR>
nnoremap <silent> <C-Left>  : bp<CR>
