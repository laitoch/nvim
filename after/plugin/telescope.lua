local builtin = require('telescope.builtin')

vim.keymap.set(
  'n',
  '<leader>ff',
  function() builtin.git_files({ show_untracked = true }) end,
  { desc = 'Find git File' }
)

vim.keymap.set(
  'n',
  '<leader>fF',
  function()
    builtin.find_files{
      cwd = vim.fn.expand('%:p:h'),
      no_ignore = true,
    }
  end,
  { desc = 'Find local Files in current directory' }
)

vim.keymap.set(
  'n',
  '<leader>fg',
  function() require('git_grep').live_grep() end,
  { desc = 'Find Git Grep' }
)

vim.keymap.set(
  'n',
  '<leader>fG',
  function()
    builtin.grep_string({
      cwd = vim.fn.expand('%:p:h'),
      search = vim.fn.input("Grep > "),
    })
  end,
  { desc = 'Find local Grep in current directory' }
)

-- vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
vim.keymap.set('n', '<leader>fm', ":Telescope marks<CR>", { desc = 'Find Marks' })
vim.keymap.set('n', '<leader>fl', ":Telescope current_buffer_fuzzy_find<CR>", { desc = 'Find Line in current buffer' })
vim.keymap.set('n', '<leader>fr', ":Telescope oldfiles<CR>", { desc = 'Find Recently opened files' })
vim.keymap.set('n', '<leader>fc', ":Telescope command_history<CR>", { desc = 'Find Command history' })
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>", { desc = 'Find Help tags' })
vim.keymap.set('n', '<leader>fk', ":Telescope keymaps<CR>", { desc = 'Find Keymaps' })

vim.keymap.set('n', '<leader>gc', ":Telescope git_commits<CR>", { desc = 'Git Commits (commit message filter) (Telescope)' })
