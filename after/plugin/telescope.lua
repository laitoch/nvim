local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>tf', function()
  builtin.find_files{
    cwd = vim.fn.expand('%:p:h'),
  }
end)
vim.keymap.set('n', '<leader>tF', function()
  builtin.find_files{
    cwd = vim.fn.expand('%:p:h'),
    no_ignore = true,
  }
end)
vim.keymap.set('n', '<leader>tg', function()
  builtin.grep_string({
    cwd = vim.fn.expand('%:p:h'),
    search = vim.fn.input("Grep > "),
  })
end)

vim.keymap.set('n', '<C-p>', builtin.git_files)
vim.keymap.set('n', '<C-p><C-g>', function()
    require('git_grep').live_grep()
end)

vim.keymap.set('n', '<leader>tb', ":Telescope buffers<CR>")
vim.keymap.set('n', '<leader>tm', ":Telescope marks<CR>")
vim.keymap.set('n', '<leader>tl', ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set('n', '<leader>lr', ":Telescope lsp_references<CR>")
vim.keymap.set('n', '<leader>tc', ":Telescope command_history<CR>")
