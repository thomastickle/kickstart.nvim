---@module 'lazy'
---@type LazySpec
return {
  {
    'NeogitOrg/neogit',
    cmd = 'Neogit',
    keys = {
      { '<leader>gg', '<cmd>Neogit<CR>', desc = 'Open Neogit' },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    opts = {},
  },
}
