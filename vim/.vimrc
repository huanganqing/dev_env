syntax on
set ignorecase
set ru
set nu
set showcmd
set hlsearch
set cin
set smartindent

hi Comment ctermfg=red
iab fdd <C-R>=strftime("%Y/%m/%d")<CR>

autocmd BufRead,BufNewFile *.pl map <F10> :% w !perl<CR>
autocmd BufRead,BufNewFile *.py map <F10> :% w !python<CR>
autocmd BufRead,BufNewFile *.py set sw=4 tabstop=4 smarttab expandtab
set sw=4 tabstop=4 smarttab expandtab

map t <C-w>
map ,, :tabe %<CR>
map qq :q<CR>

so ~/.vim/indent/*

set t_Co=256
let python_highlight_all = 1
colorscheme wombat256

set cursorline

if expand("%") =~ ".*_test\.py"
        autocmd BufNewFile *_test.py 0r ~/.vim/template/test.py
elseif expand("%") =~ ".*\.py"
        autocmd BufNewFile *.py 0r ~/.vim/template/production.py
endif

autocmd FileType python compiler pylint
let g:pylint_onwrite = 1
