" Set line nbr
:set number relativenumber

" Set leader key
:let mapleader = " "

" Enable syntax
syntax enable

" Ignore case on cmp
:set ignorecase

" Sets the cmd line high
:set cmdheight=1

" Set encoding
:set encoding=utf-8

" Show tabs and spaces
:set list
:set listchars=eol:↲,tab:\|\ ,space:·,extends:>,precedes:<

" Identation
filetype plugin indent on
:set autoindent
:set smartindent
:set tabstop=3
:set shiftwidth=3

" Activate mouse
:set mouse=a

" Share download between Vim and GUI
:set clipboard=unnamedplus

" Fold with identation
":set foldmethod=syntax
:set foldmethod=indent
:set foldlevel=99

" No Readonly
:set noro

" Alias on Vim
:command! -nargs=+ Sub call Sub(<f-args>)
:function! Sub( ... )
	execute printf('%%substitute/\<%s\>/%s/g', a:1, a:2)
:endfunction

" Update a buffer's contents on focus if it changed outside of Vim.
:au FocusGained,BufEnter * :checktime

" Set NERDTree
let NERDTreeShowHidden=1
"autocmd VimEnter * NERDTree

" Auto-comments
filetype plugin on

" 42 Header
let g:user42 = 'bmiguel-'
let g:mail42 = 'bmiguel-@student.42.fr'

" Norminette
" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 0

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 0

" Skip check when closing
let g:syntastic_check_on_wq = 1

" Run other files
:runtime ./plug.vim
:runtime ./colorscheme.vim
:runtime ./keymaps.vim
