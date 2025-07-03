
-- telescope configs
local builtin = require('fzf-lua')
-- local utils = require('telescope.utils')
--
-- function find_files_cwd ()
--     builtin.files({ cwd=vim.fn.expand('%:p:h') })
-- end

vim.keymap.set("n", "<leader>ff", function()
  require('fzf-lua').files({ cwd = vim.fn.expand('%:p:h') })
end, { desc = "Find files in current file's directory" })
vim.keymap.set('n', '<leader>fa', builtin.files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fz', builtin.blines, {})
-- vim.keymap.set('n', '<leader>ft', '<cmd> TodoTelescope<CR>', {})

vim.keymap.set('n', '<leader>fd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.keymap.set('n', '<leader>fi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
vim.keymap.set('n', '<leader>fr', '<cmd>lua vim.lsp.buf.references()<CR>', {})

vim.keymap.set('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>', {})
vim.keymap.set('n', '<leader>ll' ,'<cmd> lua vim.diagnostic.setloclist({ severity = vim.diagnostic.severity.ERROR  })<CR>', {})
--
-- tmux navigator
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>',{})
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>', {})
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateUp<CR>',{})
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateDown<CR>', {})

-- netrwc
vim.keymap.set('n', '<C-n>', '<cmd> Ntree<CR>',{})

vim.keymap.set('x', '<leader>p', '\"_dP', {})

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  })
})

-- DAP
vim.keymap.set('n', '<leader>b', function()
  require('dap').toggle_breakpoint()
end, {})

vim.keymap.set('n', '<leader>c', function()
  require('dap').continue()
end, {})

vim.keymap.set('n', '<leader>n', function()
  require('dap').step_into()
end, {})
