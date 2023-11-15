require('telescope').load_extension('git_diffs')

vim.api.nvim_set_keymap(
  'n',
  '<leader>fd',
  ':Telescope git_diffs diff_commits<cr>',
  {
    desc = 'Telescope git diffs',
    noremap = true,
    silent = true,
  }
)
