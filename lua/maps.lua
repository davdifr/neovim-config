-- Creation of a 'keymap' variable to avoid repeating 'vim.keymap'
local keymap = vim.keymap

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

keymap.set('n', '<Space>', '<C-w>w') -- cycle between windows
keymap.set('', 's<left>', '<C-w>h') -- move focus to the window to the left
keymap.set('', 's<up>', '<C-w>k') -- move focus to the window above
keymap.set('', 's<down>', '<C-w>j') -- move focus to the window below
keymap.set('', 's<right>', '<C-w>l') -- move focus to the window to the right

keymap.set('', 'sh', '<C-w>h') -- alias for s<left>
keymap.set('', 'sk', '<C-w>k') -- alias for s<up>
keymap.set('', 'sj', '<C-w>j') -- alias for s<down>
keymap.set('', 'sl', '<C-w>l') -- alias for s<right>

keymap.set('n', '<C-w><left>', 'C-w><') -- decrease window width
keymap.set('n', '<C-w><right>', 'C-w>>') -- increase window width
keymap.set('n', '<C-w><up>', 'C-w>+') -- increase window height
keymap.set('n', '<C-w><down>', 'C-w>-') -- decrease window height
