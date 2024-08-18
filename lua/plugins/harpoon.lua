local h = require("harpoon")

-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
--

vim.keymap.set("n", "<leader>a", function()
  h:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  h.ui:toggle_quick_menu(h:list())
end)

vim.keymap.set("n", "<C-y>", function()
  h:list():select(1)
end)

vim.keymap.set("n", "<C-u>", function()
  h:list():select(2)
end)

vim.keymap.set("n", "<C-i>", function()
  h:list():select(3)
end)

vim.keymap.set("n", "<C-o>", function()
  h:list():select(4)
end)

vim.keymap.set("n", "<C-p>", function()
  h:list():select(5)
end)

return {}
-- local h = {
--   "ThePrimeagen/harpoon",
--   branch = "harpoon2",
--   opts = {
--     menu = {
--       width = vim.api.nvim_win_get_width(0) - 4,
--     },
--   },
--   keys = function()
--     local keys = {
--       {
--         "<leader>H",
--         function()
--           require("harpoon"):list():append()
--         end,
--         desc = "Harpoon File",
--       },
--       {
--         "<leader>h",
--         function()
--           local harpoon = require("harpoon")
--           harpoon.ui.toggle_quick_menu(harpoon:list())
--         end,
--         desc = "Harpoon Quick Menu",
--       },
--     }
--
--     for i = 1, 5 do
--       table.insert(keys, {
--         "<leader>" .. i,
--         function()
--           require("harpoon"):list():select(i)
--         end,
--         desc = "Harpoon to File" .. i,
--       })
--     end
--     return keys
--   end,
-- }
--
-- return h
