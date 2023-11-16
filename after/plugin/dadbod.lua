vim.api.nvim_set_keymap("n", "<leader>db", "<Cmd>DBUIToggle<Cr>", { noremap = true, silent = true, desc = "Toggle UI" })
vim.api.nvim_set_keymap("n", "<leader>df", "<Cmd>DBUIFindBuffer<Cr>", { noremap = true, silent = true, desc = "Find buffer" })
vim.api.nvim_set_keymap("n", "<leader>dr", "<Cmd>DBUIRenameBuffer<Cr>", { noremap = true, silent = true, desc = "Rename buffer" })
vim.api.nvim_set_keymap("n", "<leader>dq", "<Cmd>DBUILastQueryInfo<Cr>", { noremap = true, silent = true, desc = "Last query info" })
