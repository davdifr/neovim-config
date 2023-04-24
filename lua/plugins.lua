-- Attempt to load the "packer" Lua module and save the result in "packer"
local status, packer = pcall(require, 'packer')

-- If the "packer" module could not be loaded, return and stop execution
if (not status) then return end

-- Add the "packer.nvim" plugin to the Vim runtimepath using the "packadd" command
vim.cmd [[packadd packer.nvim]]

-- Configure the "packer" plugin manager with the desired plugins
packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Additional plugins can be added here using the "use" function

    -- Catppuccin colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Undotree visualizes the undo history and makes it easy to browse 
    -- and switch between different undo branches.
    use('mbbill/undotree')

    -- Indent-blankkine adds indentation guides to all lines
    use('lukas-reineke/indent-blankline.nvim')

    -- Treesitter enables you to generate concrete syntax tree from any language it supports
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- With vim-fugitive, you can perform Git commands such as 
    -- committing, pushing, pulling, merging, and rebasing without leaving NeoVim. 
    use('tpope/vim-fugitive')

    -- Highly customizable and extensible interface for searching, 
    -- filtering, and previewing various types of data within Neovim.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Git integration for buffers
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Language Server Protocol (LSP)
    use('neovim/nvim-lspconfig')

    -- Completion plugins
    use 'hrsh7th/cmp-buffer' -- for buffer completion
    use 'hrsh7th/cmp-nvim-lsp' -- for LSP completion
    use 'hrsh7th/nvim-cmp' -- main completion plugin

    -- Snippet support
    use 'L3MON4D3/LuaSnip'
end)
