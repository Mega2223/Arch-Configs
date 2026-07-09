--require'lspconfig'.lua_ls.setup{}

vim.opt.termguicolors = true

--require'colorizer'.setup()
require("config.lazy")

--vim.opt.termguicolors = true
--require('nvim-highlight-colors').setup({})

-- vim.lsp.enable('pyright')
-- vim.lsp.enable('lua_ls')

--require("colorizer")

local opt = vim.opt

opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
