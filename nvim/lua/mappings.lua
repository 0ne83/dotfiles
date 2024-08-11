require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<A-e>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
