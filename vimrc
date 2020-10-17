execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set tabstop=4
set colorcolumn=110

"Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"F12 toggles NERDTree
map <F12> :NERDTreeToggle<CR>

" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"docstrings in py
autocmd FileType python setlocal completeopt-=preview

"tab options
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<Space>
nnoremap tj :tabprev<Space>

nnoremap th :tabfirst<Space>
nnoremap tl :tablast<Space>

"remap split
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"nerdtree
autocmd vimEnter * NERDTreeToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
