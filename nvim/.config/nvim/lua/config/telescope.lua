local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {desc = "Find Files"})
vim.keymap.set('n', '<leader><leader>', builtin.live_grep, {desc = "Live Grep"})
