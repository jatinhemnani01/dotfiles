
syntax on
set nu
set number	
set textwidth=100
set showmatch	
set hlsearch
set smartcase	
set ignorecase	
set incsearch	
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab	
set belloff=all 
set undolevels=1000	
set backspace=indent,eol,start	
set clipboard=unnamedplus

" CURSOR SETTINGS"
"
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)]"]"]"


" CURSOR SETTINGS"

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'evanleck/vim-svelte', {'branch': 'main'}
" also :CocInstall coc-svelte
" also :CocInstall coc-tsserver 

call plug#end()
nmap <C-f> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
map <C-h> <C-w>h
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
:let @/ = ""
" for coc autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

set completeopt-=preview

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight


" telescope configs
map <C-p> :Telescope git_files<CR>
file_ignore_patterns = {'node_modules/.*'}
