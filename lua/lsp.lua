local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'csharp_ls'},
  handlers = {
    lsp_zero.default_setup,
    csharp_ls = function()
        require'lspconfig'.csharp_ls.setup({})
        require("csharpls_extended").buf_read_cmd_bind()
    end
},
})
