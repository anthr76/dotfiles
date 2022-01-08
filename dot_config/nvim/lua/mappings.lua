local map = vim.api.nvim_set_keymap

-- Map leader
vim.g.mapleader = ','

-- Telescope Mappings

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap=true })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap=true })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap=true })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap=true })

-- LSPSaga Mappings
map('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<cr>', { noremap=true, silent=true })
map('n', '[e', '<cmd>Lspsaga diagnostic_jump_next<cr>', { noremap=true, silent=true })
map('n', ']e', '<cmd>Lspsaga diagnostic_jump_prev<cr>', { noremap=true, silent=true })
map('n', '<A-d>', '<cmd>Lspsaga open_floaterm<cr>', { noremap=true, silent=true })
map('t', '<A-d>', '<C-\\><C-n><cmd>Lspsaga close_floaterm<cr>', { noremap = true, silent=true })
