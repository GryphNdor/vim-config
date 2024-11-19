-- telescope configs
local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

function find_files_cwd ()
    builtin.find_files({ cwd = utils.buffer_dir() })
end

vim.keymap.set('n', '<leader>ff', find_files_cwd, {})
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>ft', '<cmd> TodoTelescope<CR>', {})

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
