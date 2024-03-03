local builtin = require('telescope.builtin')

function git_toplevel()
	local handle = io.popen("git rev-parse --show-toplevel")
	local result = handle:read("*a")
	result = result:gsub("\n$", "")
	handle:close()
	return result
end

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<leader>pS', function()
	builtin.live_grep({
		cwd = git_toplevel(),
		shorten_path = true,
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

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

vim.keymap.set('n', '<leader>pW', function()
	builtin.grep_string({
		cwd = git_toplevel(),
		shorten_path = true,
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)

vim.keymap.set('n', '<leader>pb', function()
	builtin.current_buffer_fuzzy_find({
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
	builtin.find_files({
		cwd = git_toplevel(),
		layout_config = {
			width = 0.9,
			height = 0.9,
		},
	})
end)
