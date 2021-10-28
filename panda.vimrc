" w'ere using VI Improved, use it then. Just a conf since this should happen auto
" asdfsfa
set nocompatible

" Search while I type, with highlighting, only using case if i do
set ignorecase
set smartcase
set incsearch
set hls

" Shift/Tab
filetype plugin indent on


" vim.wikia.com/wiki/indenting_source_code
" improve tab functionality
set cindent expandtab

" Size of tab
set tabstop=4 shiftwidth=4

" no vertical scroll
set nowrap
set textwidth=0

" Randomness
" Always show some kind of status
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=%r
set statusline+=%m
set statusline+=%=
set statusline+=%y
set statusline+=\ %p%%
set statusline+=\ %l:%c
" turn on line numbering.
set number
set visualbell errorbells ruler

" Joining the darkside...
set mouse=a

" Put some vertical space around the cursor
set scrolloff=2

" Fix trailing whitespace so they are periods
set list
set listchars=eol: ,tab:\|\ ,trail:.

" Make non text more visible
highlight NonText guifg=#4a4a59 guibg=#4a4a59

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
let g:solarized_termcolors=256
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
