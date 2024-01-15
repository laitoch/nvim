require("various-textobjs").setup {
  -- lines to seek forwards for "small" textobjs (mostly characterwise textobjs)
  -- set to 0 to only look in the current line
  lookForwardSmall = 5,

  -- lines to seek forwards for "big" textobjs (mostly linewise textobjs)
  lookForwardBig = 15,

  -- use suggested keymaps (see overview table in README)
  useDefaultKeymaps = false,

  -- disable some default keymaps, e.g. { "ai", "ii" }
  disabledKeymaps = {},
}

vim.keymap.set({ "o", "x" }, "ii", "<cmd>lua require('various-textobjs').indentation('inner', 'inner')<CR>")

vim.keymap.set({ "o", "x" }, "is", "<cmd>lua require('various-textobjs').subword('inner')<CR>")
vim.keymap.set({ "o", "x" }, "as", "<cmd>lua require('various-textobjs').subword('outer')<CR>")

vim.keymap.set({ "o", "x" }, "iv", "<cmd>lua require('various-textobjs').value('inner')<CR>")
vim.keymap.set({ "o", "x" }, "av", "<cmd>lua require('various-textobjs').value('outer')<CR>")
vim.keymap.set({ "o", "x" }, "ik", "<cmd>lua require('various-textobjs').key('inner')<CR>")
vim.keymap.set({ "o", "x" }, "ak", "<cmd>lua require('various-textobjs').key('outer')<CR>")
