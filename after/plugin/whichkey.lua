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
  ["K"] = { vim.lsp.buf.hover, "LSP Hover" },

  ["<leader>fa"] = {
    function()
      vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Fix All" end, apply=true})
    end,
    "[F]ix [A]ll (Ruff)",
  },
  ["<leader>oi"] = {
    function()
      vim.lsp.buf.code_action({filter=function(arg) return arg.title == "Ruff: Organize Imports" end, apply=true})
    end,
    "[O]rganize [I]mports (Ruff)",
  },
})

-- Group Names
wk.register({
  ["<leader>f"] = { name = "Find (Telescope)" },
})
