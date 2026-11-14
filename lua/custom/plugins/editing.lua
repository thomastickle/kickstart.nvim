-- Keymaps shared with IdeaVim (editors/ideavim/home/.ideavimrc in the dotfiles repo).
-- Keep the two in step.

-- Put the unnamed register on a new line below / above the cursor.
vim.keymap.set('n', '<leader>p', '<cmd>put<CR>', { desc = '[P]ut on a new line below' })
vim.keymap.set('n', '<leader>P', '<cmd>put!<CR>', { desc = '[P]ut on a new line above' })
