filetype plugin indent on
au BufNewFile,BufRead *.rs set filetype=rust
set number 
syntax on
colo onedark
set background=dark

set cursorline
set backspace=2  "compatible with version 5.4 and earlier
filetype indent on 


inoremap { {<CR>}<Esc>ko
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

execute pathogen#infect()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>



