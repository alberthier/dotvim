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
set fillchars="stl: |stlnc: |vert: |fold:-|diff:-"
set list

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" UI
set ruler
set laststatus=2                " display the status line
set showcmd                     " display incomplete commands
set number
set splitright                  " opens vsplit at the right of the current window
set splitbelow                  " opens split below the current window
let g:buffergator_autoexpand_on_split = 0
let g:ctrlp_working_path_mode = 0
colorscheme molokai
if has("gui_running")
    if has("win32")
        set guifont=Consolas:h11
    else
        set guifont=Ubuntu\ Mono\ 13
    endif
elseif $TERM =~# ".*xterm.*"
    set t_Co=256                    " Force 256 colors terminal
endif

"" Mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :BuffergatorToggle<CR>

"" Bubble single lines
map <C-S-Up> [e
map <C-S-Down> ]e

"" Bubble multiple lines
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

"" Indent keeping selection
vmap > >gv
vmap < <gv
