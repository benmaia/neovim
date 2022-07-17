if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" Plug Vim
call plug#begin()

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" NERDtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Colorscheme
Plug 'rakr/vim-two-firewatch'
Plug 'glepnir/oceanic-material'
Plug 'sainnhe/sonokai'

" Auto-comment
Plug 'preservim/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'

" Cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-path'

" Lualine
Plug 'nvim-lualine/lualine.nvim'

" Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Telescope
Plug 'nvim-telescope/telescope.nvim'

" Autopairs
Plug 'windwp/nvim-autopairs'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'onsails/lspkind-nvim'

" Snipets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'saadparwaiz1/cmp_luasnip'

" Terminal Toggle
Plug 'akinsho/toggleterm.nvim'

" Bufferline
"Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" Tranparent Terminal
Plug 'xiyaowong/nvim-transparent'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" 42 Header
Plug '42Paris/42header'

" Norminette
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'

call plug#end()
