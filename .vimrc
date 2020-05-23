execute pathogen#infect()

syntax on
syntax enable
filetype plugin indent on

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set number "Enable Line numbers 

let g:airline#extensions#tabline#formatter = 'unique_tail' "Set airline buffer header format

"colour scheme
let g:gruvbox_italic=0
colorscheme gruvbox
set background=dark

set showtabline=2 "Buffer Tabs

" List and switch to buffer
nnoremap <F5> :buffers<CR>:buffer<Space> 

set mouse=a " Enable Mouse

set cursorline " Highlight current line

" Toogle Tagbar
nnoremap <F6> :TagbarToggle<CR>

" Toogle NerdTree
nnoremap <F7> :NERDTreeToggle<CR>

set wildmenu " visual autocomplete for command menu

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

nnoremap <leader><space> :nohlsearch<CR>

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
