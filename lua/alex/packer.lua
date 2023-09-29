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

    -- parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- text manipulation
    use "vim-scripts/argtextobj.vim"
    use "michaljsmith/vim-indent-object"

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
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use "terrortylor/nvim-comment"

    -- tasks
    use {
        'EthanJWright/vs-tasks.nvim',
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim'
        }
    }

    -- terminal
    use { "akinsho/toggleterm.nvim" }

    -- get good
    use 'ThePrimeagen/vim-be-good'


end)
