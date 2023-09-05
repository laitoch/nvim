require("neotest").setup({
adapters = {
  require("neotest-python")({
    args = {"-vv", "-o log_cli=true log_cli_level=DEBUG"},
  })
},
})


vim.keymap.set('n', '<leader>us', require("neotest").summary.toggle, {noremap = true, desc = "Unit Test Summary"})
vim.keymap.set('n', '<leader>ur', require("neotest").run.run, {noremap = true, desc = "Unit Test Run"})
vim.keymap.set('n', '[f', function() require("neotest").jump.prev({ status = "failed" }) end, {noremap = true, desc = "Jump Previous Failed Unit Test"})
vim.keymap.set('n', ']f', function() require("neotest").jump.next({ status = "failed" }) end, {noremap = true, desc = "Jump Next Failed Unit Test"})
vim.keymap.set(
  'n',
  '<leader>uo',
  function()
    require("neotest").output.open({
      enter = true,
      open_win = function()
        local h = vim.api.nvim_list_uis()[1].height - 2
        local w = vim.api.nvim_list_uis()[1].width
        local width = math.floor(vim.api.nvim_eval("&columns") * 0.9)
        local height = math.floor(vim.api.nvim_eval("&lines") * 0.85)
        vim.api.nvim_open_win(
          vim.api.nvim_create_buf(false,true),
          true,
          {
            relative="editor",
            width=width,
            height=height,
            row=(h - height) * 0.5,
            col=(w - width) * 0.5,
            border={"╭","─","╮","│","╯","─","╰","│"},
            title="Unit Test Output",
          }
        );
      end,
    })
  end,
  {
    noremap = true,
    desc = "Unit Test Output",
  }
)
