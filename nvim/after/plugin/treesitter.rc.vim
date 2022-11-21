if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
  },
  ensure_installed = {
    "c",
	"cpp",
  },
  autotag = {
    enable = true,
  },
  navigation = {
	  enable = true,
  }
}

EOF
