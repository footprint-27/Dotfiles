set nocompatible
filetype off

call plug#begin()

"UI Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'overcache/NeoSolarized'

"Editor plugins
Plug 'Raimondi/delimitMate'

call plug#end()

syntax on
filetype plugin indent on

set softtabstop=4
set shiftwidth=4
set tabstop=4
set number
set ruler
set foldmethod=syntax
set undofile
set undofile
set cindent cinoptions=N-s,g0,j1,(s,m1

set splitright splitbelow

nnoremap gA :%y+<CR>

set title

let delimitMate_expand_cr = 1
autocmd FileType tex let b:delimitMate_autoclose = 0

let g:bufferline_rotate=1
let g:bufferline_fixed_index=-1
let g:bufferline_echo = 0

let g:solarized_visibility='low'
set background=light
colorscheme NeoSolarized
set termguicolors

let g:airline_powerline_fonts = 1

let g:NERDAltDelims_c = 1
map <C-b> :!time g++ -std=c++17 -Wshadow -Wall -g % -Wno-unused-result -o %:r <CR>
map <C-d> :!time g++ -std=c++17 -Wshadow -Wall -g % -o -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG %:r <CR>
map <C-r> :!./%:r < sample.in <CR>

map <C-n> :bn<CR>
map <C-p> :bp<CR>
map <C-a> ggVG<CR>
map <C-c> :%y+<CR>
