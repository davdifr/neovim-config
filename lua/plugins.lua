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
end)
