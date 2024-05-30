local actions = require("telescope.actions")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
    {
      "<leader>qfs",
      desc = "Add selection to qflist"
    },
    {
      "<leader>qfs",
      desc = "Add all to qflist"
    }
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        n = {
          ["<leader>qfs"] = actions.send_selected_to_qflist + actions.open_qflist,
          ["<leader>qfa"] = actions.send_to_qflist + actions.open_qflist,
        }
      }
    },
  },
}
