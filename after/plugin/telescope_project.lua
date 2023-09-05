require'telescope'.load_extension('project')

vim.api.nvim_set_keymap(
        'n',
        '<C-t><C-p>',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)
