return {
    -- Tmux stuff
    {
        'christoomey/vim-tmux-navigator',
        lazy = false
    },

    -- Theme
    {
        "ellisonleao/gruvbox.nvim", 
        priority = 1000 , config = true
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Fuzzy Finder
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Commenting
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },

    -- Folke Stuff
    "folke/neodev.nvim",
    "folke/which-key.nvim",
    { 
        "folke/neoconf.nvim", 
        cmd = "Neoconf" 
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- TS
    { "nvim-treesitter/nvim-treesitter" },

    -- LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    -- Git
    {'tpope/vim-fugitive'},

}
