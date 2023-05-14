-- Creation of a 'keymap' variable to avoid repeating 'vim.keymap'
local keymap = vim.keymap

-- Use jj as a shortcut for Esc in Insert mode 
keymap.set('i', 'jj', '<Esc>')

-- Use space as leader
vim.g.mapleader = ' '

-- Shortcuts for deleting and yanking text
keymap.set('n', '<leader>d', 'dd')
keymap.set('n', '<leader>y', 'yy')

-- Shortcuts for moving to the start and end of a line
keymap.set({'n', 'v'}, '<leader>h', '0')
keymap.set({'n', 'v'}, '<leader>l', '$')

-- Shortcuts for saving and quitting
keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>q', ':q<CR>')

-- Key mappings for increment/decrement
keymap.set('n', '+', '<C-a>') -- increment number under cursor
keymap.set('n', '-', '<C-x>') -- decrement number under cursor

-- Key mappings for moving selected text
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move selected text down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move selected text up

-- Key mappings for editing text
keymap.set('n', 'x', '"_x') -- delete character without yanking
keymap.set('n', '<C-a>', 'gg<S-v>G') -- select all text

-- Key mappings for managing tabs and windows
keymap.set('n', 'te', ':tabedit<Return>', { silent = true }) -- open new tab
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true }) -- split window horizontally
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true }) -- split window vertically

keymap.set('', '<C-h>', '<C-w>h') 
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

keymap.set('n', '<C-w><left>', 'C-w><') -- decrease window width
keymap.set('n', '<C-w><right>', 'C-w>>') -- increase window width
keymap.set('n', '<C-w><up>', 'C-w>+') -- increase window height
keymap.set('n', '<C-w><down>', 'C-w>-') -- decrease window height
