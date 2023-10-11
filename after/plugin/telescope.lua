local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local actions = require("telescope.actions")

-- closes telescsope on single Esc
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<C-p>"] = actions.close,
                ["<Esc>"] = actions.close,
            },
        },
    },
})
