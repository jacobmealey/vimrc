filetype plugin indent on
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.pde set filetype=processing
set number 
syntax on
set cursorline
set backspace=2  "compatible with version 5.4 and earlier
filetype indent on 

inoremap {<CR> {<CR>}<Esc>ko
inoremap { {}<Left>
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

let fts = ['c', 'cpp', 'rust', 'processing', 'go', 'java']
if index(fts, &filetype) == -1
	map c o//<space>
endif

let fts = ['python', 'shell']
if index(fts, &filetype) == -1
	map c o#<space>
endif



call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

