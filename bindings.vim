" Key bindings

" set mapleader
let mapleader = ","
let maplocalleader = "\\"

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" toggle paste mode with F3 (:set paste/nopaste)
set pastetoggle=<F3>

" close all buffers but current one
command! BufOnly silent! execute "%bd|e#|bd#"

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-n> :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" fugitive
nmap <leader>g :silent Ggrep<space>
nmap <leader>D :Gdiff<space>

" deoplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" copy relative path  (src/foo.txt)
nnoremap <leader>cf :let @*=expand("%")<CR>

" copy absolute path  (/something/src/foo.txt)
nnoremap <leader>cF :let @*=expand("%:p")<CR>

" copy filename       (foo.txt)
nnoremap <leader>ct :let @*=expand("%:t")<CR>
