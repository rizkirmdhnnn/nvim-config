require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit to normal mode" })
map("n", "<leader>fT", "<cmd>TodoTelescope<CR>", { desc = "Find Todos" })

map("n", "<leader>pdb", "<cmd>DBUIToggle<CR>", { desc = "DBUI Toggle" })
