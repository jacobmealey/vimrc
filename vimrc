filetype plugin indent on
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.pde set filetype=processing
set number 
syntax on
colo onedark
set background=dark

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

execute pathogen#infect()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>



