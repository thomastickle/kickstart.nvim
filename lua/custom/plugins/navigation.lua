---@module 'lazy'
---@type LazySpec
return {
  {
    'stevearc/oil.nvim',
    cmd = 'Oil',
    keys = {
      { '-', '<cmd>Oil<CR>', desc = 'Open parent directory' },
    },
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
  },
}
