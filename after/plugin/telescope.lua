local builtin = require('telescope.builtin')

-- TODO: The line below shold be a which-key group, not a comment.
--
-- <leader>f = find

vim.keymap.set('n', '<leader>fF', function()
  builtin.find_files{
    cwd = vim.fn.expand('%:p:h'),
    no_ignore = true,
  }
end)
vim.keymap.set('n', '<leader>fg', function()
  builtin.grep_string({
    cwd = vim.fn.expand('%:p:h'),
    search = vim.fn.input("Grep > "),
  })
end)
vim.keymap.set(
  'n',
  '<leader>ff',
  function() builtin.git_files({ show_untracked = true }) end
)
vim.keymap.set(
  'n',
  '<leader>fg',
  function() require('git_grep').live_grep() end  -- TODO: needs show_untracked also?
)
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
vim.keymap.set('n', '<leader>fm', ":Telescope marks<CR>")
vim.keymap.set('n', '<leader>fl', ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set('n', '<leader>fr', ":Telescope oldfiles<CR>")
vim.keymap.set('n', '<leader>fc', ":Telescope command_history<CR>")
