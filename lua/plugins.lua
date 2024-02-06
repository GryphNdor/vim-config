return {
    {
      'christoomey/vim-tmux-navigator',
      lazy = false
    },
    {
        "luisiacc/gruvbox-baby",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.g.gruvbox_baby_telescope_theme = 1
            vim.cmd([[colorscheme gruvbox-baby]])
        end,
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    "folke/neodev.nvim",
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    {"nvim-treesitter/nvim-treesitter"},

    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
}
