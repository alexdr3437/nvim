local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep({
        shorten_path = true,
        layout_config = {
            width = 0.9,
            height = 0.9,
        },
    })
end)
vim.keymap.set('n', '<leader>pw', function()
    builtin.grep_string()
end)
