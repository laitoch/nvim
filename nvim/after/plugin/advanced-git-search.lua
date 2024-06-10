vim.keymap.set(
  'n',
  '<leader>gr',
  function()
    vim.cmd('Telescope advanced_git_search search_log_content')
  end,
  { desc = 'Git Repository (code filter) (Telescope)' }
)

vim.keymap.set(
  'n',
  '<leader>gf',
  function()
    vim.cmd('Telescope advanced_git_search search_log_content_file')
  end,
  { desc = 'Git File (code filter) (Telescope)' }
)

vim.keymap.set(
  'n',
  '<leader>gF',
  function()
    vim.cmd('Telescope advanced_git_search diff_commit_file')
  end,
  { desc = 'Git File (commit message filter) (Telescope)' }
)

vim.keymap.set(
  'n',
  '<leader>gm',
  function()
    vim.cmd('Telescope advanced_git_search changed_on_branch')
  end,
  { desc = 'Git Branch compare like a github pr (Telescope)' }
)

vim.keymap.set(
  'v',
  '<leader>gb',
  function()
    vim.cmd("'<,'>AdvancedGitSearch diff_commit_line")
  end,
  { desc = 'Git Blame: History of lines (Telescope)' }
)
