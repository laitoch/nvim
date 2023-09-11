local cmp = require'cmp'
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

--
-- cmp.setup({
--   mapping = cmp.mapping.preset.insert({
--       ['<C-Space>'] = cmp.mapping.complete(),
--       ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   })
-- })
