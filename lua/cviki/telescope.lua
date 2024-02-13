local builtin = require("telescope.builtin")
local telescope = require('telescope')

telescope.setup {
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
vim.keymap.set('n', '<C-p>',builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.live_grep, {})