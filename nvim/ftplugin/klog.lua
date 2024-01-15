vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')

local opts = { noremap = true, silent = true, buffer = 0 }

vim.keymap.set(
  'n',
  '<leader>r',
  function()
    vim.cmd(
      'FloatermNew --width=0.9 --height=0.9 klog report '
      .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p")
      .. '| less -R'
    )
  end,
  { desc = 'Klog Report', unpack(opts) }
)

vim.keymap.set(
  'n',
  '<leader>e',
  function()
    vim.cmd(
      'FloatermNew --width=0.9 --height=0.9 nvim -c "cnoremap q :q! | nnoremap q :q!<cr> | set noautoindent | set nosmartindent | set noconfirm | norm! i2018-03-24\rFirst day at my new job\r    8:30 - 17:00\r    -45m Lunch break\r\r2018-03-25\r    8h15m\r\r2018-03-26\rMore onboarding. Also started\rto work on my first small project!\r    8:30 - 11:15\r    11:15 - 12:20 Meeting with Sarah\r    4h\r\r2019-07-22\rDid some \\#sports\r    2h \\#badminton session with Max\r    18:00 - 19:00 Went out for a \\#run\r\r2019-07-23\r    8:30 - 10:30 Design draft \\#project=478\r    10:30 - 11:00 Phone \\#call=\\"Liz Jones\\"\r\r2019-07-22\r    1h\r    8:00 - 9:00\r\r2019-07-26 (7h30m!)\r    8:00 - 16:00 Work\r    -45m Lunch break\r\r2019-07-26\r    <23:30 - 8:00 Worked a night shift\r    22:30 - 1:45> Watched some movies\r\r\r2020-02-18\rThis record demonstrates various\rways of formatting summaries:\r    5h A short summary.\r    -120m This is a longer summary, which\r        is continued on the next line.\r    14:00 - 16:00\r        Summaries can also start on the\r        subsequent line.\r\r2023-11-15\r    00:24 - ?"'
    )
  end,
  { desc = 'Klog Report', unpack(opts) }
)

vim.cmd('inoremap <expr> <C-d> strftime("%Y-%m-%d")')
vim.cmd('inoremap <expr> <C-t> strftime("%H:%M")')
