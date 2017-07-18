" Meghna Malhotra
" Only Rule - Don't put any lines in your vimrc that you don't understand

syntax enable       "enable syntax processing
set background=dark
set tabstop=3       " number of visual spaces per tab
set expandtab       " use spaces instead of tabs
set softtabstop=3
set shiftwidth=3
set smartcase       " search will be case insensitive when you use lower case, but not when you use uppercase
set number          " show line numbers
set wildmenu        " visual autocomplete for command menu
set incsearch       " search as characters are entered
set mouse=a         " mouse enabled
set hlsearch        " highlight search matches

"indent based on rules for filetype
filetype plugin indent on

"let g:molokai_original=1
"let g:solarized_termcolors = 256
colorscheme badwolf

autocmd BufWritePre *.py :%s/\s\+$//e  " strip trailing whitespace on save
