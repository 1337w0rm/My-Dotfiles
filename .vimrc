syntax on
set tabstop=4
set softtabstop =4
set expandtab

set number
set showcmd
filetype indent on 
set wildmenu
set showmatch
set incsearch
set hlsearch
nnoremap  <leader><space> :nohlsearch <CR>
set foldenable
set foldlevelstart =10
nnoremap <space> za
set foldmethod=indent
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
