set nu 
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
filetype indent on
 
set relativenumber 
colorscheme slate

if !exists("g:syntax_on")
    syntax enable
    filetype on
endif 

inoremap < <><Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

inoremap <C-d> <Esc>

nnoremap <silent> <C-s> :vsplit <CR>
