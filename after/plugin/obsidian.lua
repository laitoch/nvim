require("obsidian").setup({
  mappings = {},  -- Needed due to https://github.com/epwalsh/obsidian.nvim/issues/162
  dir = "~/vault",
  note_id_func = function(title)
    -- If title is given, use it to create a note ID.
    -- Otherwise, use timestamp + random suffix.
    local suffix = ""
    if title ~= nil then
      -- If title is given, transform it into valid file name.
      return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    else
      -- If title is nil, just add 4 random uppercase letters to the suffix.
      for _ = 1, 4 do
        suffix = suffix .. string.char(math.random(65, 90))
      end
    end
    return tostring(os.time()) .. "-" .. suffix
  end,
  finder = "telescope.nvim",
})

vim.api.nvim_set_keymap("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>oy", "<cmd>ObsidianYesterday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>of", "<cmd>ObsidianFollowLink<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>on", "<cmd>ObsidianLinkNew<CR>", { noremap = true, silent = true })
