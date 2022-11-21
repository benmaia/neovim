local on_attach = function (client, bufnr)
  -- ...
  -- ...
end

require("lspconfig").clangd.setup{
  on_attach = on_attach,
}

