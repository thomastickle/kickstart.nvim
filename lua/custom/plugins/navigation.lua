vim.pack.add {
  'https://github.com/stevearc/oil.nvim',
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
}

require('oil').setup {
  view_options = { show_hidden = true },
}
vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })

local harpoon = require 'harpoon'
harpoon:setup()
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Harpoon file' })
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon menu' })
for index = 1, 4 do
  vim.keymap.set('n', '<leader>' .. index, function() harpoon:list():select(index) end, { desc = 'Harpoon file ' .. index })
end
