require('plugins')
require('mappings')


local g = vim.g
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

local o = vim.o
o.laststatus = 0
o.showmode = false
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.number = true
o.ignorecase = true
o.smartcase = true

vim.cmd('colorscheme base16-monokai')


