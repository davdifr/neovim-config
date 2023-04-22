-- Check if the Telescope plugin has been loaded correctly
local status, telescope = pcall(require, "telescope")

if (not status) then 
    return 
end

-- Load Telescope's built-in functions
local builtin = require("telescope.builtin")

-- Set key mappings for Telescope's built-in functions
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
