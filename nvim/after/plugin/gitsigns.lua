require('gitsigns').setup {
  signcolumn = true,
  numhl      = true,
  current_line_blame = true,
  on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']h', function()
        if vim.wo.diff then return ']h' end
        vim.schedule(function() gs.next_hunk({preview=true}) end)
        return '<Ignore>'
      end, {expr=true})

      map('n', '[h', function()
        if vim.wo.diff then return '[h' end
        vim.schedule(function() gs.prev_hunk({preview=true}) end)
        return '<Ignore>'
      end, {expr=true})

      -- Actions
      map('n', '<C-h><C-s>', gs.stage_hunk)
      map('n', '<C-h><C-r>', gs.reset_hunk)
      map('v', '<C-h><C-s>', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
      map('v', '<C-h><C-r>', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
      map('n', ',hS', gs.stage_buffer)
      map('n', '<C-h><C-u>', gs.undo_stage_hunk)
      map('n', ',hR', gs.reset_buffer)
      map('n', ',hp', gs.preview_hunk)
      -- map('n', ',hb', function() gs.blame_line{full=true} end)
      map('n', ',hb', gs.toggle_current_line_blame)
      map('n', ',hd', gs.diffthis)
      map('n', ',hD', function() gs.diffthis('~') end)
      -- map('n', ',td', gs.toggle_deleted) -- TODO whats this?

      -- Text object
      map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end
}
