" Updates other buffers as you make changes
set autoread
set path+=**
" Nice menu when typing `:find *.py`
set wildmode=full,list
set wildmenu
" Ignore files
set wildignore+=*build/*
set wildignore+=*dist/*
set wildignore+=**/coverage/*
set wildignore+=**/.git/*
set wildignore+=**/node_modules/** 
" Make vimgrep use rg
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
"Open quickfix list after find,grep
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
  augroup END

"Folds
set foldenable
set foldmethod=indent
" Sets to open all folds by default when opening a file
set foldlevelstart=99

set fileencoding=utf-8
set conceallevel=0 "so that ``is visible in markdown files"
" set clipboard^=unnamed,unnamedplus
set norelativenumber
set completeopt=menuone,noselect

set wrap
set timeoutlen=1000 "time to wait for a mapped sequence to complete (in milliseconds)"
set updatetime=250 


"sets vsp to split right by default
set splitright "force all horizontal splits to go below current window"
set splitbelow "force all vertical splits to go to the right of current window"
set cmdheight=1
set hidden
set mouse=a "allow the mouse to be used in neovim"
set noswapfile "dont create swap files"
set nobackup "dont create a backup"
set nowritebackup "if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited"
set undodir=~/.vim/undodir
set undofile "enable persistent undo"

set hlsearch "highlight all matches when search"
set tabstop=2 "insert 2 spaces for a tab"
set softtabstop=2
set smartindent

set shiftwidth=2 "the number of spaces inserted for each indentation"
set ignorecase
set smartcase
set noerrorbells
set expandtab "convert tabs to spaces"
set scrolloff=8
set number "display line numbers"
set numberwidth=2 "line numbers width"
set autochdir "change current working directory whenever you change files" 
set colorcolumn=120
set iskeyword+=- "avoids separating words that have -" 
set background=dark "adjust color groups for dark"
" Better colors
if (has("termguicolors"))
  set termguicolors
endif

if has("nvim")
  let g:plus_home = stdpath('data') . '/plugged'
endif

" Insert your plugins here i.e Plug 'tpope/vim-fugitive' 
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'folke/lua-dev.nvim'
Plug 'lunarvim/colorscheme'
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
