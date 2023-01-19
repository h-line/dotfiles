local g = vim.g
local km = vim.keymap

-- Space as leader key
g.mapleader = ' '
g.maplocalleader = ' '
-- km.set('', '<Space>', '<Nop>', { noremap=true, silent=true })

-- Telescope bindings
builtin = require('telescope.builtin')
km.set('n', '<C-p>', builtin.find_files, {})
km.set('n', '<leader>fg', builtin.live_grep, {})
km.set('n', '<leader>fb', builtin.buffers, {})
km.set('n', '<leader>fh', builtin.help_tags, {})


-- LSP bindings
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')


  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  km.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  km.set('n', '<leader>d', vim.lsp.buf.definition, bufopts)
  km.set('n', 'K', vim.lsp.buf.hover, bufopts)
  km.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  km.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  km.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  km.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  km.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  km.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  km.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  km.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  km.set('n', 'gr', vim.lsp.buf.references, bufopts)
  km.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end


