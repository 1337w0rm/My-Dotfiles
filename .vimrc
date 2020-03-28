syntax enable
set tabstop=2
set softtabstop=2
set expandtab
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

set background=dark
colorscheme monokai

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

"Compile and run C/CPP/Java/Python"
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype java nnoremap <F5> :w <bar> !clear && javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !clear && python % <CR>
autocmd filetype c nnoremap <F5> :w <bar> !clear && g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>

"Plugins"

call plug#begin()
" On-demand loading
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-f> :NERDTreeToggle<CR>
