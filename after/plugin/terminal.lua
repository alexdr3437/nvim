require("toggleterm").setup {}

vim.keymap.set('t', '<esc>', "[[<C-\\><C-n>]]")
vim.keymap.set('n', '<leader>t', "<cmd>ToggleTerm size=50 direction=vertical <CR>")
