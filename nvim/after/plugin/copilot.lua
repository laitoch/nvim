vim.g.copilot_filetypes = {
  markdown = true,
  gitcommit = true,
}

vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
