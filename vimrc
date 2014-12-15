syntax on 
set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set number
set shiftwidth=4 "设定tab长度
set softtabstop=4 "设定退格键删除空格数
set tabstop=4 "设定tab长度
set nowrapscan "禁止搜索到两端时重新搜索
set ignorecase smartcase "搜索时忽略大小写 但有大写字母时搜索对大小写敏感
set incsearch "一边输入一边搜索
set hlsearch 
set mouse=a
set history=999
set autoread
set so=9
set wildmenu
set whichwrap+=h,l
set magic
set showcmd
set hidden

set nobackup
set nowritebackup
set noswapfile

set path+=/usr/include/c++/4.8,
set path+=~
set path+=$VIMRUNTIME
let mapleader = ","


noremap <silent> <F2> :set syntax=cpp<CR>
noremap <silent> <F4> :w<CR>:make<CR><CR><CR>
noremap <silent> <F5> :!./a.out<CR>
noremap <silent> <F9> :copen<CR>
noremap <silent> <F10> :cclose<CR>

noremap  <silent> <C-x> :wall<CR>:qall<CR>
noremap <silent> <leader>w :wall<CR>
noremap <silent> <leader>c :close<CR>
noremap <silent> <leader><C-w> :close<CR>
noremap <silent> <leader><C-t> :tabnew<CR>
noremap <C-k> I//<ESC>
noremap <C-j> ^xx
noremap <silent> <leader>nh :noh<CR>
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
noremap <silent> <leader>o o<ESC>
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader>s :source ~/.vimrc<CR>

"自动补全括号
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap <CR> <CR><c-r>=Pair()<CR>

function! ClosePair(char)  
if getline('.')[col('.') - 1] == a:char  
return "\<Right>"
else  
return a:char  
endif  
endf  
function! Pair()
if getline('.')[col('.') - 1] == '}'
return "\<ESC>O"
else
return ""
endif
endf  

filetype on
filetype plugin on
filetype indent on

"设置编码
set fileencoding=gb18030 
set fileencodings=utf-8,gb18030,utf-16,big5 
