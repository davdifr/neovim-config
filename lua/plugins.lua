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
end)
