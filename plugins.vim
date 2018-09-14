" NerdTree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimLeave * NERDTreeClose

" CtrlP Configuration
let g:ctrlp_max_height = 40
let g:ctrlp_switch_buffer = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_highlighting_cache=1
set noshowmode

" gitgutter
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1
let g:gitgutter_grep="ag --nocolor"

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

" deoplete
" autocm * :UpdateRemotePlugin
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'tag']
" increase tags cache size to ~5MiB
let deoplete#tag#cache_limit_size = 5000000

" omni completion settings
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" emmet-vim
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" ale
let g:ale_linters = {
\  'javascript': ['eslint'],
\}
