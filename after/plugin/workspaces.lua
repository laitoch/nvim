require("workspaces").setup({ })
require("telescope").load_extension("workspaces")

vim.api.nvim_set_keymap(
  "n",
  "<C-S>",
  "<cmd>Telescope workspaces<CR>",
  { noremap = true, silent = true, desc = "Open workSpace" }
)
