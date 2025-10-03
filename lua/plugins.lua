return {
    -- Tmux stuff
    {
        'christoomey/vim-tmux-navigator',
        lazy = false
    },
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
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- or if using mini.icons/mini.nvim dependencies = { "echasnovski/mini.icons" },
        opts = {}
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
        cmd = "Trouble",
        opts = {}
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                HUH = {
                    icon = "? ",
                    color = "info"
                }
            }
        }
    },

    -- TS
    { 
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            highlight = {
                enable = true
            }
        },
    },

    -- LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'Decodetalkers/csharpls-extended-lsp.nvim'},

    -- Formatter
    { 'stevearc/conform.nvim', opts = {}, },

    -- AutoClosing
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {}
    },

    -- Git
    {'tpope/vim-fugitive'},

    -- DAP,
    {'mfussenegger/nvim-dap'},
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
    {
        "Cliffback/netcoredbg-macOS-arm64.nvim",
        dependencies = { "mfussenegger/nvim-dap" }
    },
    -- file navigation
    {
      'stevearc/oil.nvim',
      ---@module 'oil'
      ---@type oil.SetupOpts
      opts = {},
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
      -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
      lazy = false,
    }

}
