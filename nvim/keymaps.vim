" Handle Vim
:nnoremap q :q!<cr>

" Move lines
:nnoremap <M-Up> :m-2<CR>
:nnoremap <M-Down> :m+<CR>
:vnoremap <M-Up> :m '<-2<CR>gv=gv
:vnoremap <M-Down> :m '>+1<CR>gv=gv

" Move between windows and tabs
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

"Change Vim root
nnoremap <C-r> :cd %:p:h<CR>:pwd<CR>

"Auto-comments
map cc <Plug>NERDCommenterInvert

"ToggleTerminal
nnoremap <M-j> :ToggleTerm<CR>
tnoremap <M-j> exit<CR>

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"42 Header
nnoremap <F5> :Stdheader<cr>

"Norminette
nnoremap <C-n> :Norminette<cr>
