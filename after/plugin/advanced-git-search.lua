

vim.keymap.set(
  'n',
  '<leader>f2',
  function()
    vim.cmd('Telescope advanced_git_search search_log_content')
  end,
  { desc = 'Open vifm in floaterm' }
)


vim.keymap.set(
  'n',
  '<leader>f3',
  function()
    vim.cmd('Telescope advanced_git_search search_log_content_file')
  end,
  { desc = 'Open vifm in floaterm' }
)

-- Blah blah


-- :'<,'>AdvancedGitSearch diff_commit_line


vim.keymap.set(
  'n',
  '<leader>f4',
  function()
    vim.cmd('Telescope advanced_git_search changed_on_branch')
  end,
  { desc = 'Open vifm in floaterm' }
)


vim.keymap.set(
  'n',
  '<leader>f1',
  function()
    vim.cmd('Telescope advanced_git_search diff_commit_file')
  end,
  { desc = 'Open vifm in floaterm' }
)
