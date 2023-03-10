" visual configs
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
filetype indent on
colorscheme slate
syntax enable
filetype on

" dev experience configs
set nu
set hlsearch
set relativenumber
set cursorline


" general keybinds
inoremap < <><Esc>ha

inoremap >> >>
inoremap << <<

inoremap <C-d> <Esc>
inoremap <C-_> //<space>

nnoremap f ^
nnoremap b $

nnoremap <silent> <C-s> :vsplit <CR>
