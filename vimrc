let mapleader=","

execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation
set hidden                      " Allow hidden buffers (do not ask to save unchaned ones)

"" Backup and swap files
set nobackup
set noswapfile

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set softtabstop=4               " backspace unindents
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent
let &listchars="tab:\u2192 ,trail:\u00b7,extends:\u25b8,precedes:\u25c2"
set list

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" UI
set t_Co=256                    " Force 256 colors terminal
set ruler
set showcmd                     " display incomplete commands
set number
let g:buffergator_autoexpand_on_split = 0
let g:ctrlp_working_path_mode = 0
colorscheme molokai
if has("gui_running")
    if has('win32')
        set guifont=Consolas:h11
    else
        set guifont=Ubuntu\ Mono\ 13
    endif
endif

"" Mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :BuffergatorToggle<CR>

"" Bubble single lines
map <C-Up> [e
map <C-Down> ]e

"" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

"" Indent keeping selection
vmap > >gv
vmap < <gv
