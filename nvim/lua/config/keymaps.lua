-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
local map = vim.keymap.set

map({ "n", "v" }, "<A-f>", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

map("n", "<A-q>", "<cmd>quitall<cr>", { desc = "Save and Quit All" })
map("n", "<A-r>", "<cmd>redo<cr>", { desc = "Redo" })

map("n", "<A-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<A-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<A-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<A-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<A-w>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<A-c>", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<A-c>", "gc", { desc = "Toggle comment", remap = true })
map("t", "<esc>", [[<C-\><C-n>]])

vim.api.nvim_set_keymap("n", "<C-R>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-[>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<C-]>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
