execute pathogen#infect()

syntax on
syntax enable
filetype plugin indent on

" Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set number relativenumber "Enable Line numbers

" Title Settings
set title 
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set laststatus=2

set mouse=a " Enable Mouse
set cursorline " Highlight current line

" Airline Settings
let g:airline#extensions#tabline#formatter = 'unique_tail' "Set airline buffer header format
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0

"colour scheme
let g:gruvbox_italic=0
colorscheme gruvbox
set background=dark

" Toogle Tagbar
nnoremap <F6> :TagbarToggle<CR>

" Toogle NerdTree
nnoremap <F7> :NERDTreeToggle<CR>

" List and switch to buffer
nnoremap <F5> :buffers<CR>:buffer<Space> 

map <F4> :call CurtineIncSw()<CR>

set wildmenu " visual autocomplete for command menu

" Search Settings
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

nnoremap <leader><space> :nohlsearch<CR>

" Backup Settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
