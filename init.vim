lua << END
-- load plugins
require('plugins')
-- load config for plugins
require('plugins-config')
END


"  *****************************************************************************
"" Basic Setup
"  *****************************************************************************"
" nvim is utf-8
set clipboard=unnamed
filetype plugin indent on
let mapleader=','
set encoding=utf-8 nobomb
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
set bomb
set binary
set backspace=indent,eol,start
set hidden
set hlsearch
set termguicolors " this variable must be enabled for colors to be applied properly
set ignorecase
set smartcase
set cursorline cursorcolumn
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set mouse=a     "  use mouse in all modes
set mousefocus
set report=0    "  always report number of lines changed                "
set nowrap      "  dont wrap lines
set scrolloff=5 "  5 lines above/below cursor when scrolling
set number      "  show line numbers
set showmatch   "  show matching bracket (briefly jump)
set showcmd     "  show typed command in status bar
set title       "  show file in titlebar
set autoindent
set smartindent "  indent when
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=3
set ruler
set laststatus=2

colorscheme sonokai


"  *****************************************************************************
"  Key Maps
"  *****************************************************************************"
"nvim-tree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


autocmd BufWritePre *.go lua goimports(1000)

