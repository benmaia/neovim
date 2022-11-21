if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> <C-f> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> <C-g> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap  <silent> <C-p> :Telescope file_browser<cr>
nnoremap('n', '<leader>m', '<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="vsplit"})<CR>', {noremap=true, silent=true})
"nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')
require("telescope").load_extension "file_browser"

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

vim.api.nvim_set_keymap('n', '<leader>ft', [[<cmd>lua require'telescope.builtin'.lsp_document_symbols{}<CR>]], {noremap = true})


EOF
