" Handle Vim
:nnoremap q :q!<cr>
:nnoremap <M-s> :w!<cr>
:nnoremap <leader>+ :vertical resize +5<CR>
:nnoremap <leader>- :vertical resize -5<CR>

" Move lines
:nnoremap <M-Up> :m-2<CR>
:nnoremap <M-Down> :m+<CR>
:vnoremap <M-Up> :m '<-2<CR>gv=gv
:vnoremap <M-Down> :m '>+1<CR>gv=gv

" Move between windows and tabs
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

"Change Vim root
nnoremap <C-r> :cd %:p:h<CR>:pwd<CR>

"Auto-comments
nnoremap cc <Plug>NERDCommenterInvert

"ToggleTerminal
nnoremap <C-t> :ToggleTerm<CR>
tnoremap <C-t> exit<CR>

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"42 Header
nnoremap <F5> :Stdheader<cr>

"Norminette
nnoremap <C-n> :Norminette<cr>
