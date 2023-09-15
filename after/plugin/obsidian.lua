require("obsidian").setup({})

vim.api.nvim_set_keymap("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>oy", "<cmd>ObsidianYesterday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { noremap = true, silent = true })
