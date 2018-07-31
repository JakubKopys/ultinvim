" set default charset
set encoding=utf-8
set termencoding=utf-8

" disable .swap or backup files
set noswapfile
set nobackup
set nowritebackup

" indentation
set autoindent
set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et                  " expand tabs into spaces

" highlight settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" ruler at 120
set colorcolumn=120

" splits placement
set splitbelow
set splitright

" enable syntax highlight
filetype plugin indent on
syntax on

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set list listchars=tab:>-,trail:.,extends:>
set list

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" terminal true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" decreasing updatetime
set updatetime=100

" making clipboard systemwide
set clipboard=unnamed

" sesions
set ssop-=options
set ssop-=folds
set ssop-=help

" performance improvements
set re=1
set ttyfast
set lazyredraw
set norelativenumber
set nocursorline

" remove extra whitespace on save
autocmd FileType * autocmd BufWritePre <buffer> %s/\s\+$//e

" cancel last search with esc
nnoremap <esc> :noh<return><esc>

" Colorschemes
colorscheme railscasts
" autocmd BufWritePre * :%s/\s\+$//e

" load bundles
source ~/.config/nvim/bundles.vim
" load bundles config
source ~/.config/nvim/plugins.vim
" load key bindings
source ~/.config/nvim/bindings.vim
