vim.keymap.set("n", "<leader>ty", function() require('telescope').extensions.neoclip.default() end, {desc = "Telescope: Neoclip Yank History"})
