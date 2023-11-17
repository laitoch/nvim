local wk = require("which-key")

vim.keymap.set(
  'n',
  '_',
  '<Plug>fanfingtastic_f_',
  {
    noremap = true,
    desc = "Find next underscore (When holding shift, _ goes forward, F_ goes backward)",
  }
)

-- Group Names
wk.register({
  ["<leader>f"] = { name = "Find (Telescope)" },
})
