-- Check if the treesitter plugin has been loaded correctly
local status, ts = pcall(require, "nvim-treesitter.configs")

if (not status) then 
    return 
end

ts.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "javascript", "typescript", "lua", "rust" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    autotag = {
        enable = true,
    },
}

-- Users of packer.nvim have reported that when using treesitter for folds, 
-- they sometimes receive an error "No folds found", or that treesitter highlighting does not apply. 
-- A workaround for this is to set the folding options in an autocmd:
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
    group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        vim.opt.foldlevel      = 20
        vim.opt.foldmethod     = 'expr'
        vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
    end
})
