set nu
set hlsearch
colorscheme slate
if !exists("g:syntax_on")
    syntax enable
    filetype on
endif
nnoremap <silent> <C-s> :vsplit <CR>
