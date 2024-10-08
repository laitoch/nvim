local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ","

require "config.options"
require "config.remap"
require("lazy").setup("plugins")

vim.cmd('let g:python3_host_prog = "~/.pyenv/shims/python"')

vim.cmd('source ~/.config/nvim/addsubtract.vim')
vim.cmd('source ~/.config/nvim/makepython.vim')

vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN }
  },
  signs = {
    severity = { min = vim.diagnostic.severity.WARN }
  },
  underline = {
    severity = { min = vim.diagnostic.severity.WARN }
  },
  update_in_insert = false,
  severity_sort = true,
})

-- To install:
--   :which python
--   Use that venv's pip to install black-macchiato
vim.api.nvim_set_keymap("v", "<C-b>", "<Esc><cmd>'<,'>!black-macchiato<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-b>", "V<Esc><cmd>'<,'>!black-macchiato<CR>", {noremap = true})
