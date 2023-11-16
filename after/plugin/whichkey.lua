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


-- LSP
wk.register({
  ["<leader>ca"] = { vim.lsp.buf.code_action, "[C]ode [A]ction (LSP)" },
  ["<leader>rn"] = { vim.lsp.buf.rename, "[R]e[n]ame (LSP)" },
  ["<leader>gd"] = { vim.lsp.buf.definition, "[G]o to [D]efinition (LSP)" },
  ["<leader>gr"] = { "<cmd>Telescope lsp_references<cr>", "[G]o to [R]eferences (LSP + Telescope)" },
  ["<leader>D"] = { "<cmd>Telescope lsp_type_definitions<cr>", "Type [D]efinition" },
  ["K"] = { vim.lsp.buf.hover, "LSP Hover" },
})

-- Group Names
wk.register({
  ["<leader>f"] = { name = "Find (Telescope)" },
})

wk.register({
  ["<leader>j"] = { "<cmd>lua require('treesj').toggle()<cr>", "TreeSJ: Split-Join" },
  ["<leader>S"] = { "<cmd>lua require('spectre').toggle()<CR>", "Toggle Spectre" },
  ["<leader>l"] = {
    name = "+lsp",
    f = {
      function()
        vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Fix All" end, apply=true})
      end,
      "Ruff: Fix All",
    },
    i = {
      function()
        vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Organize Imports" end, apply=true})
      end,
      "Ruff: Organize Imports",

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
