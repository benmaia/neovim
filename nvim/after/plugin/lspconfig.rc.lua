local on_attach = function (client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
   -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

--require('lspconfig')['pylsp'].setup{
	--on_attach = on_attach,
	--flags = lsp_flags,
	--python = {
      --analysis = {
        --extraPaths = {"path/to/desired/modules"}
      --}
	--},
--}

require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['clangd'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

