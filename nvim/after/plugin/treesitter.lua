require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- Your custom capture.
        ["ae"] = "@statement.outer",

        -- Built-in captures.
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = false,
      goto_next_start = {
        ["]a"] = "@parameter.inner",
        ["]e"] = "@statement.outer",
      },
      goto_next_end = {
        ["]A"] = "@parameter.inner",
        ["]E"] = "@statement.outer",
      },
      goto_previous_start = {
        ["[a"] = "@parameter.inner",
        ["[e"] = "@statement.outer",
      },
      goto_previous_end = {
        ["[A"] = "@parameter.inner",
        ["[E"] = "@statement.outer",
      },
    },
  },
  -- context_commentstring = {
  --   enable = true,
  -- },
}
