"" Vim Move Configuration

if !has('gui_running')
  map "in Insert mode, type Ctrl+v Alt+n here" <A-n>
endif

"" NERDTree

" Tree view should by positioned on the left.
let g:NERDTreeWinPos = "left"

" Show hidden files.
let g:NERDTreeShowHidden=1

" Ignore the python cache files.
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']

" Set the window width to 25 characters.
let g:NERDTreeWinSize=25


" deoplete setting.
let g:deoplete#enable_at_startup = 1

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" superCollider setting.
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'scnvim-data']

" default is half the terminal size for vertical and a third for horizontal
let g:scnvim_postwin_size = 35

" the statusline is made anew
function! s:set_sclang_statusline()
  setlocal stl=
  setlocal stl+=%f
  setlocal stl+=%=
  setlocal stl+=%(%l,%c%)
  setlocal stl+=\ \|
  setlocal stl+=%26.26{scnvim#statusline#server_status()}
endfunction

augroup scnvim_stl
  autocmd!
  autocmd FileType supercollider call <SID>set_sclang_statusline()
augroup END

" comment out stuff with this in scnvim
autocmd FileType supercollider setlocal tabstop=2 softtabstop=2 shiftwidth=2 commentstring=//%s 

" toggle colours in the post_window
let g:scnvim_postwin_syntax_hl = 0

" Rust Language Server - Config
" Required for operations modifying multiple buffers like rename.
set hidden

" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"     \ 'python': ['/usr/local/bin/pyls'],
"     \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
"     \ }

" " note that if you are using Plug mapping you should not use `noremap` mappings.
" nmap <F5> <Plug>(lcn-menu)
" " Or map each action separately
" nmap <silent>K <Plug>(lcn-hover)
" nmap <silent> gd <Plug>(lcn-definition)
" nmap <silent> <F2> <Plug>(lcn-rename)
