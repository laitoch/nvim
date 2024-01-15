vim.g.mapleader = ","

-- Paste without overwriting clipboard
vim.keymap.set("v", "<leader>p", "\"_dP")

-- Center on screen when jumping around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")
vim.keymap.set('i', '<CR>', '<C-G>u<CR>')

-- Better indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")


-- Quickfix list navigation
vim.keymap.set('n', '[q', '<cmd>cprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ']q', '<cmd>cnext<CR>', { noremap = true, silent = true })

-- Move by screen line
vim.keymap.set('n', 'j', 'gj', {silent=true})
vim.keymap.set('n', 'k', 'gk', {silent=true})

-- Better command-line navigation
vim.keymap.set('c', '<C-A>', '<Home>', {})
vim.keymap.set('c', '<C-E>', '<End>', {})

-- Easier command to force overwriting files
vim.api.nvim_command('command W w! !sudo tee %')

-- Scroll with Control-j/k
vim.keymap.set('', '<C-J>', '5j', {})
vim.keymap.set('', '<C-K>', '4k', {})
