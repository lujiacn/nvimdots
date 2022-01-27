-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- nvim tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    -- color theme
    use 'EdenEast/nightfox.nvim'
    use 'sainnhe/sonokai'
    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'windwp/nvim-autopairs'
    use {
        'hrsh7th/nvim-cmp', 
        requires={
            'L3MON4D3/LuaSnip', 
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
        }
    }

    use 'terrortylor/nvim-comment'

    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    use 'tami5/lspsaga.nvim'  
    use 'onsails/lspkind-nvim'
    use 'junegunn/vim-easy-align'
    use 'easymotion/vim-easymotion'
    use 'liuchengxu/vista.vim'
end)
