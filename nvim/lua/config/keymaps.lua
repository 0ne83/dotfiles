-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
local map = vim.keymap.set

map({ "n", "v" }, "<A-f>", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

map("n", "<A-q>", "<cmd>wqa<cr>", { desc = "Save and Quit All" })

map("n", "<A-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<A-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<A-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<A-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<A-w>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<A-c>", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<A-c>", "gc", { desc = "Toggle comment", remap = true })
