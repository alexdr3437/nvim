-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- fuzzy find
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- colorscheme
    use "rebelot/kanagawa.nvim"
    use "catppuccin/nvim"

    -- parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- text manipulation
    use "vim-scripts/argtextobj.vim"
    use "michaeljsmith/vim-indent-object"
    use "terrortylor/nvim-comment"
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use "ahonn/vim-fileheader"

    -- file navigation
    use('theprimeagen/harpoon')

    -- file  manipulation
    use('mbbill/undotree')

    -- git
    use('tpope/vim-fugitive')

    -- lsp, linting, formatting
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use "simonrw/vim-yapf"

    -- tasks
    use {
        'EthanJWright/vs-tasks.nvim',
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim'
        }
    }

    -- tmux
    use 'christoomey/vim-tmux-navigator'

    -- get good
    use 'ThePrimeagen/vim-be-good'

    -- copilot
    use 'github/copilot.vim'
end)
