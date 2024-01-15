vim.api.nvim_set_keymap(
  "n",
  "<leader>j",
  "<cmd>lua require('treesj').toggle()<cr>",
  { desc = "TreeSJ: Split-Join" }
)
