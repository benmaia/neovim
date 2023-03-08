require('mason').setup()
require('mason-lspconfig').setup()
require('lspconfig')['clangd'].setup{}
require('lspconfig')['pyright'].setup{}
require('lspconfig')['pylsp'].setup{}
require('goto-preview').setup {}
require("dapui").setup()
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require('dap-python').resolve_python = function()
  return '/usr/bin/python3'
end
--require("dap-python").args = {"--input-path","/home/ctw/projects/kpi_inputs/hoo/data.parquet",
             --"--output-path","/home/ctw/projects/kpi_outpus/hoo",
             --"--hoo-variant", "hoo130",
             --"--construction-site-end-time-limit", "10"}
require('dap.ext.vscode').load_launchjs(nil, python)

require('neodev').setup()
