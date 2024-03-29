local rust = {
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require("config.rust-tools")
    end,
    config = function()
      require("rust-tools").setup(opts)
    end,
  },
}
return rust
-- return {}
