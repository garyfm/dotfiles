execute pathogen#infect()

syntax on
filetype plugin indent on

" Tabs to be 4 spaces
set tabstop=4
set shiftwidth=4

"Start NerdTree when vim is open
autocmd vimenter * NERDTree

"Enable Line numbers
set number

"Set airline buffer header format
let g:airline#extensions#tabline#formatter = 'unique_tail'

"colour scheme
let g:gruvbox_italic=0
colorscheme gruvbox
set background=dark

"Buffer Tabs
set showtabline=2

"List and switch to buffer
:nnoremap <F5> :buffers<CR>:buffer<Space>
