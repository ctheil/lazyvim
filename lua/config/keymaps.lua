-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- -- HARPOON
--
-- local h = require("harpoon")
-- vim.keymap.set("n", "<leader>a", h.mark.add_file)
-- vim.keymap.set("n", "<C-e>", h.ui.toggle_quick_menu)
