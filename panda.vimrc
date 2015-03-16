" w'ere using VI Improved, use it then. Just a conf since this should happen auto
set nocompatible

" Search while I type, with highlighting, only using case if i do
set smartcase incsearch hls

" Shift/Tab
" Indent automatically depending on filetype
filetype indent on
" improve tab functionality
set smartindent smarttab expandtab
" Size of tab
set tabstop=2 shiftwidth=2 softtabstop=2

" Randomness
" Always show some kind of status
set laststatus=2
" turn on line numbering. Turn it off with set nonu"
set number

" Put some space around the cursor
set scrolloff=2

" Fix trailing whitespace so they are periods
set list
set listchars=eol: ,trail:.

" Key maps
map <leader>n :NERDTree <CR>
map <C-t> :tabnew <CR>
nmap <D-f> :Ack<space>

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
