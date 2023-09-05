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
    if string.len(env) > 0 then
      config.settings.python.pythonPath = env
    end
  end
}
-- require('lspconfig').pyre.setup {}
require('lspconfig').ruff_lsp.setup({})

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
