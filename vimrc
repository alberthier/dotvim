let mapleader=","

execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation

"" Backup and swap files
set nobackup
set noswapfile

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" UI
set ruler
set showcmd                     " display incomplete commands
set number
let g:buffergator_autoexpand_on_split = 0
let g:ctrlp_working_path_mode = 0
if has("gui_running")
   colorscheme molokai
   set guifont=Ubuntu\ Mono\ 13
endif

"" Mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :BuffergatorToggle<CR>
