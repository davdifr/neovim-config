-- Remove any custom cursor style and revert to the default cursor style provided by the operating system
vim.opt.guicursor = ""

-- Enable absolute line numbering
vim.opt.number = true

-- Enable relative line numbering
vim.opt.relativenumber = true
-- When both options are enabled, the relative line numbering is displayed
-- on the current line, while the absolute line numbering is displayed
-- on the other lines.

-- Sets the width of a tab character to 4 spaces
vim.opt.tabstop = 4

-- Control whether Vim should insert spaces instead of a tab character
-- when the Tab key is pressed
vim.opt.expandtab = true

-- Control the behavior of the Tab key when the expandtab option is enabled.
-- When this option is set to a non-zero value (such as 4 in this case),
-- pressing the Tab key will insert spaces instead of a tab character
vim.opt.softtabstop = 4

-- Controls the width of indentation when using commands
-- like >> or << to shift lines to the right or left
vim.opt.shiftwidth = 4

-- Automatically adjust the indentation of a newly created line based
-- on the context of the previous line
vim.opt.smartindent = true

-- Not automatically wrap lines of text when they reach the edge of the screen
vim.opt.wrap = false

-- Not create a swap file for the buffer
vim.opt.swapfile = false

-- Prevent Vim from creating a backup file when editing a file
vim.opt.backup = false

-- Enables undo persistence using an undo file stored separately
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Add a new pattern to the list of file patterns that should be ignored
-- by Vim's file completion feature
vim.opt.wildignore:append('/node_modules/')
-- Pattern '/node_modules/' specifies a file path pattern that matches any
-- file or directory located within a directory named node_modules,
-- regardless of where it is located in the directory tree

-- Disable the highlighting of search results in the buffer
vim.opt.hlsearch = false

-- Enables incremental search
vim.opt.incsearch = true

-- Use true colors when running in a terminal emulator that supports it
vim.opt.termguicolors = true

-- Specifies the minimum number of lines that should be displayed
-- above and below the cursor when scrolling the buffer
vim.opt.scrolloff = 8

-- Displays a column on the left or right side of the buffer that shows signs
-- or markers. This column is used by various plugins and features in Vim to
-- indicate the location of errors, warnings, bookmarks, and other types of information
vim.opt.signcolumn = "yes"

-- Specify a range of characters that should be included in the list of valid characters for file names
vim.opt.isfname:append("@-@")
-- The '@-@' range allows file names to contain the '@' character

-- Sets the time interval, in milliseconds, for updating various Vim status and informational displays
vim.opt.updatetime = 50

-- Sets the column number for highlighting a specific column
vim.opt.colorcolumn = "80"
