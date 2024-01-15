vim.keymap.set('n', '<leader>dv', '<cmd>DiffviewOpen<cr>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>ds', '<cmd>DiffviewOpen --staged<cr>', { desc = 'Open Diffview --staged' })
vim.keymap.set('n', '<leader>dh', '<cmd>DiffviewOpen HEAD..HEAD~1<cr>', { desc = 'Open Diffview HEAD' })
vim.keymap.set('n', '<leader>dq', '<cmd>DiffviewClose<cr>', { desc = 'Close Diffview' })
