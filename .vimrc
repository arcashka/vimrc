set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set textwidth=120
set tabstop=4
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list
set number
set termguicolors
set laststatus=2
set incsearch
set hlsearch
set ignorecase
set smartcase
set scrolloff=5

execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = " "

let g:ycm_global_ycm_extra_conf = '~/vimfiles/.ycm_extra_conf.py'

let g:NERDTreeMapOpenSplit = 'h'
let g:NERDTreeMapPreviewSplit = 'gh'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:ycm_show_diagnostics_ui = 0

let g:session_autosave='no'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:airline_theme='twofirewatch'

let g:ack_mappings = {
      \ "t": "<C-W><CR><C-W>Tzz",
      \ "T": "<C-W><CR><C-W>TgT<C-W>j",
      \ "o": "<CR>zz",
      \ "O": "<CR><C-W>p<C-W>czz",
      \ "go": "<CR><C-W>p",
      \ "h": "<C-W><CR><C-W>Kzz",
      \ "H": "<C-W><CR><C-W>K<C-W>b",
      \ "v": "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>tzz",
      \ "gv": "<C-W><CR><C-W>H<C-W>b<C-W>J" }

let g:ackhighlight = 1

set background=dark
colorscheme two-firewatch

highlight Search guibg = #df5f00

"******************************************* MAPPING 
map <C-G> : YcmCompleter GoTo<CR>
map <C-n> : NERDTreeToggle<CR>
map <C-j> : cn<CR>zz
map <C-k> : cp<CR>zz
map <leader>h : vertical resize -10<CR>
map <leader>l : vertical resize +10<CR>
map <leader>j : resize -10<CR>
map <leader>k : resize +10<CR>
map <leader>r : NERDTreeFind<CR>
map <leader>n : noh<CR>
map <leader>f : cw<CR>
map <leader>F : ccl<CR>
map <leader>t : tabnew<CR>
map <leader>T : terminal<CR>
nnoremap <silent> <C-Right> : bn<CR>
nnoremap <silent> <C-Left>  : bp<CR>

"******************************************* WINDOWS specific
if has("win32")
	map <F11> <Esc> : WToggleFullscreen<CR>
	map <F2>  <Esc> : WToggleClean<CR>
	if has("gui_running")
		if $VIM_FULLSCREEN_DLL_FIX
		else
			autocmd GUIEnter * call libcall("loadfixgvimborder.dll", "LoadFixGVimBorder", "#002B36")
			let $VIM_FULLSCREEN_DLL_FIX = 1
		endif
	endif
	autocmd GUIEnter * silent! WToggleClean
endif

set guifont=Consolas:h14:cANSI
set backspace=2
set backspace=indent,eol,start

set noeb vb t_vb=

set langmenu=en_US
let $LANG = 'en_US'
