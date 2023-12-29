-- telescope configs
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})

-- delete buffer
vim.keymap.set('n', '<leader>x', ':enew<bar>bd #<CR>', {})

-- tmux navigator
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>',{})
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>', {})
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateUp<CR>',{})
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateDown<CR>', {})

