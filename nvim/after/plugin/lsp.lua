require("mason").setup()
require("mason-lspconfig").setup()

-- Install: pylsp-rope & "python-lsp-server[rope]"
require('lspconfig').pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        autopep8 = { enabled = false },
        flake8 = { enabled = false },
        jedi_completion = { enabled = false },
        jedi_definition = { enabled = false },
        jedi_hover = { enabled = false },
        jedi_references = { enabled = false },
        jedi_signature_help = { enabled = false },
        jedi_symbols = { enabled = false },
        mccabe = { enabled = false },
        pycodestyle = { enabled = false },
        pydocstyle = { enabled = false },
        pyflakes = { enabled = false },
        pylint = { enabled = false },
        rope_autoimport = { enabled = false },
        rope_completion = { enabled = false },
        yapf = { enabled = false },
      }
    }
  }
}

require('lspconfig').pyright.setup {
  on_new_config = function(config, root_dir)
    local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; pdm run which python'))
    -- if (string.len(env) == 0) then
    -- env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry run which python'))
    -- end
    if string.len(env) > 0 then
      config.settings.python.pythonPath = env
    end
  end
}
-- require('lspconfig').pyre.setup {}
require('lspconfig').ruff_lsp.setup({})
--   init_options = {
--     settings = {
--       args = {
--         "--preview",
--       }
--     }
--   },
-- })

-- https://vi.stackexchange.com/a/39800
-- Use internal formatting for bindings like gq. 
 vim.api.nvim_create_autocmd('LspAttach', {
   callback = function(args)
     vim.bo[args.buf].formatexpr = nil
   end,
 })

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})

-- then setup your lsp server as usual
require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
    }
  }
})

vim.api.nvim_set_keymap(
  "n",
  "<leader>ca",
  "<cmd>lua vim.lsp.buf.code_action()<cr>",
  { desc = "[C]ode [A]ction (LSP)" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rn",
  "<cmd>lua vim.lsp.buf.rename()<cr>",
  { desc = "[R]e[n]ame (LSP)" }
)
vim.api.nvim_set_keymap(
  "n",
  "gd",
  "<cmd>lua vim.lsp.buf.definition()<cr>",
  { desc = "[G]o to [D]efinition (LSP)" }
)
vim.api.nvim_set_keymap(
  "n",
  "gr",
  "<cmd>Telescope lsp_references<cr>",
  { desc = "[G]o to [R]eferences (LSP + Telescope)" }
)
vim.api.nvim_set_keymap(
  "n",
  "K",
  "<cmd>lua vim.lsp.buf.hover()<cr>",
  { desc = "LSP Hover" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fa",
  "<cmd>lua vim.lsp.buf.code_action({filter=function(arg) return arg.title == 'Ruff: Fix All' end, apply=true})<cr>",
  { desc = "[F]ix [A]ll (Ruff)" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>oi",
  "<cmd>lua vim.lsp.buf.code_action({filter=function(arg) return arg.title == 'Ruff: Organize Imports' end, apply=true})<cr>",
  { desc = "[O]rganize [I]mports (Ruff)" }
)
