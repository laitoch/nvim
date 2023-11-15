-- require('telescope').setup {
--     extensions = {
--         git_diffs = {
--             git_command = {
--               "git",
--               "log",
--               "--decorate",
--               "--all",
--               "--date=relative",
--               -- "--oneline",
--               '--pretty=format:\"%h%x09%<(7,trunc)%an%x08%x08%x09%ad%x09%s\"',
--               ".",
--             }
--         }
--     }
-- }

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
