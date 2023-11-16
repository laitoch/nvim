local wk = require("which-key")

-- vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
--     desc = "Toggle Spectre"
-- })
-- vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
--     desc = "Search on current file"
-- })

vim.keymap.set(
  'n',
  '_',
  '<Plug>fanfingtastic_f_',
  {
    noremap = true,
    desc = "Find next underscore",
  }
)


-- LSP
wk.register({
  ["<leader>ca"] = { vim.lsp.buf.code_action, "[C]ode [A]ction (LSP)" },
  ["<leader>rn"] = { vim.lsp.buf.rename, "[R]e[n]ame (LSP)" },
  ["<leader>gd"] = { vim.lsp.buf.definition, "[G]o to [D]efinition (LSP)" },
  ["<leader>gr"] = { "<cmd>Telescope lsp_references<cr>", "[G]o to [R]eferences (LSP + Telescope)" },
  ["<leader>D"] = { "<cmd>Telescope lsp_type_definitions<cr>", "Type [D]efinition" },
})

wk.register({
  ["<leader>f"] = {
    name = "Find (Telescope)",
  },
  ["<leader>j"] = { "<cmd>lua require('treesj').toggle()<cr>", "TreeSJ: Split-Join" },
  ["K"] = { vim.lsp.buf.hover, "LSP Hover" },
  ["<leader>S"] = { "<cmd>lua require('spectre').toggle()<CR>", "Toggle Spectre" },
  ["<leader>l"] = {
    name = "+lsp",
    f = { vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Fix All" end, apply=true}), "Ruff: Fix All" },
    i = { vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Organize Imports" end, apply=true}), "Ruff: Organize Imports" },

  },
})

wk.register({
  ["<leader>r"] = {
    name = "+refactoring",
    -- TODO: It would be nice to have the following features:
    --  "Rename module + file/directory"
    --  "Move class/function/variable to another file"
    --  "Inline function"
    --  Rope has some of them:
    --  when pylsp with rope is available, we can via code actions:
    --    rename modules (files and directories need to be renamed manually)
    --    inline functions
    --  Move module/global/method should be in ropevim only
    --    MUST HAVE!
    f = {
      function() require('refactoring').refactor('Extract Function') end,
      "Extract Function",
    },
    v = {
      function() require('refactoring').refactor('Extract Variable') end,
      "Extract Variable",
    },
    i = {
      function() require('refactoring').refactor('Inline Variable') end,
      "Inline Variable",
    },
  },
}, {mode = "x"})
