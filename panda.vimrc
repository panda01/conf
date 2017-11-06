" w'ere using VI Improved, use it then. Just a conf since this should happen auto
set nocompatible

" Search while I type, with highlighting, only using case if i do
set ignorecase
set smartcase
set incsearch
set hls

" Shift/Tab
filetype plugin on
" improve tab functionality
set smartindent smarttab expandtab
" Size of tab
set tabstop=2 shiftwidth=2 softtabstop=2

" Randomness
" Always show some kind of status
set laststatus=2
" turn on line numbering. Turn it off with set nonu"
set number
set visualbell errorbells ruler

" Joining the darkside...
set mouse=a

" Put some space around the cursor
set scrolloff=2

" Fix trailing whitespace so they are periods
set list
set listchars=eol: ,tab:\|\ ,precedes:\ ,trail:.

" Setup Persistent undo
set undofile
set undodir=~/.undo

" Key maps
map <leader>n :NERDTreeToggle <CR>
map <C-t> :tabnew <CR>
map <C-/> <Plug>NERDComToggleComment!

" Plugins
execute pathogen#infect()

" Change colorscheme from default to solarized
syntax enable
set background=dark
colorscheme solarized

" Automatically create .backup directory, writable by the group.
if filewritable("~/") && ! filewritable("~/.backup")
  silent execute '!umask 002; mkdir ~/.backup'
endif
set backupdir=~/.backup directory=~/.backup


" CtrlP Fixes
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:ctrlp_working_path_mode = 'a'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|optimize'
