vim.api.nvim_set_keymap("n", "<Leader>db", "<Cmd>DBUIToggle<Cr>", { noremap = true, silent = true, desc = "Toggle UI" })
vim.api.nvim_set_keymap("n", "<Leader>df", "<Cmd>DBUIFindBuffer<Cr>", { noremap = true, silent = true, desc = "Find buffer" })
vim.api.nvim_set_keymap("n", "<Leader>dr", "<Cmd>DBUIRenameBuffer<Cr>", { noremap = true, silent = true, desc = "Rename buffer" })
vim.api.nvim_set_keymap("n", "<Leader>dq", "<Cmd>DBUILastQueryInfo<Cr>", { noremap = true, silent = true, desc = "Last query info" })
