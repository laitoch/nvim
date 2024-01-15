return {
  "AckslD/nvim-neoclip.lua",
  requires = {
    -- TODO: Persistent history didn't work for me
    -- {'kkharji/sqlite.lua', module = 'sqlite'},
    {'nvim-telescope/telescope.nvim'},
  },
  config = function()
    require('neoclip').setup({
      -- enable_persistent_history = true,
    })
  end,
}
