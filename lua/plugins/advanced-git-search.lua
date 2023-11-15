return {
  "aaronhallaert/advanced-git-search.nvim",
  config = function()
    -- optional: setup telescope before loading the extension
    require("telescope").setup{
      -- move this to the place where you call the telescope setup function
      extensions = {
        advanced_git_search = {
          -- fugitive or diffview
          diff_plugin = "diffview",
          -- customize git in previewer
          -- e.g. flags such as { "--no-pager" }, or { "-c", "delta.side-by-side=false" }
          git_flags = { "--pager=less" },
          -- customize git diff in previewer
          -- e.g. flags such as { "--raw" }
          git_diff_flags = {},
          -- Show builtin git pickers when executing "show_custom_functions" or :AdvancedGitSearch
          show_builtin_git_pickers = false,
          entry_default_author_or_date = "date", -- one of "author" or "date"

          -- Telescope layout setup
          telescope_theme = {
            function_name_1 = {
              -- Theme options
            },
            function_name_2 = "dropdown",
            -- e.g. realistic example
            show_custom_functions = {
              layout_config = { width = 0.4, height = 0.4 },
            },
          }
        }
      }
    }

    require("telescope").load_extension("advanced_git_search")
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    "sindrets/diffview.nvim",
  },
}
