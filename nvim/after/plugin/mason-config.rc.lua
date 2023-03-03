require('mason').setup()
require('mason-lspconfig').setup()
require('lspconfig')['clangd'].setup{}
require('lspconfig')['pylsp'].setup{}
require('goto-preview').setup {}
