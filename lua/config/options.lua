vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = '80,118'
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.expandtab = true
vim.opt.formatoptions = "jcroqln"
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.scrolloff = 4
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append({ W = true, I = true, c = true })
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spelllang = { "en" }
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.textwidth = 118
vim.opt.timeoutlen = 300
vim.opt.updatetime = 200
vim.opt.wildmode = "longest:full,full"
vim.opt.winminwidth = 5

vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true
vim.opt.undolevels = 10000

vim.api.nvim_create_autocmd('Filetype', {
  pattern = { 'csv' },
  command = 'setlocal nowrap'
})
