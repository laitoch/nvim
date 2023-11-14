vim.keymap.set('n', '<C-g>', '<cmd>FloatermNew --width=0.9 --height=0.9 --opener=edit lazygit<cr>')
vim.keymap.set(
  'n',
  '<C-f>',
  function()
    vim.cmd(
      'FloatermNew --width=0.9 --height=0.9 --opener=edit vifm "-c set vicmd=floaterm" '
      .. vim.loop.cwd()
      .. ' '
      .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p:h")
    )
  end,
  { desc = 'Open vifm in floaterm' }
)
vim.keymap.set(
  'n',
  '<leader>fv',
  function()
    vim.cmd(
      'FloatermNew --width=0.9 --height=0.9 --opener=edit vd '
      .. vim.api.nvim_buf_get_name(0)
    )
  end,
  { desc = 'Open VisiData in floaterm' }
)
vim.keymap.set('n', '<C-t>', '<cmd>FloatermNew --wintype=vsplit --width=0.4<cr>')
vim.keymap.set('n', '<leader>fi', '<cmd>FloatermNew --wintype=vsplit --width=0.4 pdm run ipython --no-autoindent<cr>')
vim.keymap.set('v', '<C-s>', "<esc><cmd>\'<,\'>FloatermSend!<cr>")


vim.keymap.set(
  'n',
  '<leader>fs',
  function()
    vim.cmd(
      'FloatermNew --width=0.9 --height=0.9 --opener=edit csvlens '
      .. vim.api.nvim_buf_get_name(0)
    )
  end,
  { desc = 'Open cSvlens in floaterm' }
)

-- vim.keymap.set('t', '<C-space>', "<C-\\><C-n>")


vim.cmd("command -nargs=0 R %s/\\n\\n/\\r/g ")  -- Repl / RemoveLines
-- vim.api.nvim_create_user_command(
--   'RemoveLines',
--   function(args)
--     -- vim.cmd("%s/\n\n/\r/g")
--   end,
--   {
--     desc = "Remove single blank lines",
--     nargs = "*"
--   }
-- )
