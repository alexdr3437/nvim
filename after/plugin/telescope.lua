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
	builtin.grep_string({
		shorten_path = true,
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)
vim.keymap.set('n', '<leader>pb', function()
	builtin.buffers({
		shorten_path = true,
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pc', function()
	builtin.commands({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>ph', function()
	builtin.help_tags({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pt', function()
	builtin.lsp_type_definitions({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pi', function()
	builtin.lsp_implementations({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pr', function()
	builtin.lsp_references({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pd', function()
	builtin.lsp_definitions({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pm', function()
	builtin.man_pages({
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pg', function()
	builtin.git_files({
		cwd = vim.fn.expand('%:p:h'),
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)
