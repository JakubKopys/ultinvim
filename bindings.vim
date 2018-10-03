" Key bindings

" \e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""" START Buffer movement
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>

" List all possible buffers with "gl"
nnoremap gl :ls<CR>

" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b
""" END Buffer movement

" toggle paste mode with F3 (:set paste/nopaste)
set pastetoggle=<F3>

" close all buffers but current one
command! BufOnly silent! execute "%bd|e#|bd#"

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-n> :NERDTreeToggle<CR>
" ,r to show current file in the tree
nmap <leader>r :NERDTreeFind<CR>

" fugitive
nmap <leader>g :silent Ggrep<space>
nmap <leader>D :Gdiff<space>

" deoplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

""" START Copying file paths
" MacOS | copy current file name (relative/absolute) to system clipboard
if has("mac") || has("gui_macvim") || has("gui_mac")
  " relative path  (src/foo.txt)
  nnoremap <leader>cf :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <leader>cF :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <leader>ct :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <leader>cd :let @*=expand("%:p:h")<CR>
" Linux | copy current file name (relative/absolute) to system clipboard (Linux version)
elseif has("gui_gtk") || has("gui_gtk2") || has("gui_gnome") || has("unix")
  " relative path (src/foo.txt)
  nnoremap <leader>cf :let @+=expand("%")<CR>

  " absolute path (/something/src/foo.txt)
  nnoremap <leader>cF :let @+=expand("%:p")<CR>

  " filename (foo.txt)
  nnoremap <leader>ct :let @+=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <leader>ch :let @+=expand("%:p:h")<CR>
endif
""" END Copying file paths
