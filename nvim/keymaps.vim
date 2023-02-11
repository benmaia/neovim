" Handle Vim
:nnoremap q :q!<cr>
:nnoremap <leader>q :qa!<cr>
:nnoremap <M-s> :w!<cr>
:nnoremap <leader>+ :vertical resize +5<CR>
:nnoremap <leader>- :vertical resize -5<CR>

" Move lines
:nnoremap <A-Up> :m-2<CR>
:nnoremap <A-Down> :m+<CR>
:vnoremap <A-Up> :m '<-2<CR>gv=gv
:vnoremap <A-Down> :m '>+1<CR>gv=gv

" Move between windows and tabs
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

"Change Vim root
nnoremap <leader>r :cd %:p:h<CR>:pwd<CR>

"Auto-comments
nnoremap cc <Plug>NERDCommenterInvert
vnoremap cc <Plug>NERDCommenterInvert

"ToggleTerminal
nnoremap <C-t> :ToggleTerm size=50 dir=. direction=vertical<CR>
nnoremap <leader>t :ToggleTerm direction=float<CR>

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"42 Header
nnoremap <F5> :Stdheader<cr>

"Norminette
nnoremap <C-n> :Norminette<cr>

" BUF LSP
nnoremap <leader>d :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vd :vsplit <CR> :Telescope lsp_definitions<CR>
nnoremap <leader>h :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gd :lua require('goto-preview').goto_preview_definition()<CR>

" Cmake alias
nnoremap <leader>cb :cmake -Bbuild<CR>
nnoremap <leader>cm :cmake --build build<CR>
