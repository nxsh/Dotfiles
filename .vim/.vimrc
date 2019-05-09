colorscheme solarized " set color scheme

syntax on " syntax highlighting on

filetype plugin indent on " indentation

set expandtab " turn tabs into spaces

set number " show line numbers

set showcmd " show last command entered in bottom bar

set cursorline " highlight line cursor is currently on

set wildmenu " visual autocomplete for vim commands

set showmatch " highlight matching parentheses

set incsearch " search as characters are entered
set hlsearch  " highlight search matches

set mouse=a "enable mouse use
set clipboard=unnamedplus "copy to system clipboard when yanking etc

" set lightline colorscheme
let g:lightline = { 
      \ 'colorscheme': 'solarized dark'
      \ }

