" Indent automatically depending on filetype
filetype indent on
set smartindent

" turn on lin numbering. Turn it off with "set nonu"
set number

" Case insensitve search
set ic

" Highlight search
set hls

" Wrap text inside of beng on one line
set lbr


"Size of tab hard stop
set tabstop=2

" Size of indent
set shiftwidth=2

" A combination of space and tabs are used to simulate tab stops at a width other than the hard tab stop
set softtabstop=2

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" Always use spaces instead of tabl characters
set expandtab

" Put some space around the cursor
set scrolloff=5

" Fix trailing whitespace so they are periods
set list
set listchars=eol: ,trail:. " on mac eol opt+space

" Key maps
map <leader>n :NERDTree <CR>
map <C-t> :tabnew <CR>

" Plugins
execute pathogen#infect()

" Change colorscheme from default to solarized
syntax enable
set background=dark
colorscheme solarized

