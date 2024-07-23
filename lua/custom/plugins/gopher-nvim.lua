return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  config = function(_, opts)
    require('gopher').setup(opts)

    vim.keymap.set('n', '<leader>cgsj', '<cmd> GoTagAdd json <CR>', { desc = 'Add json struct tags' })

    vim.keymap.set('n', '<leader>cgsy', '<cmd> GoTagAdd yaml <CR>', { desc = 'Add yaml struct tags' })

    vim.keymap.set('n', '<leader>cgie', '<cmd> GoIfErr <CR>', { desc = 'Generate if err' })
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
}
