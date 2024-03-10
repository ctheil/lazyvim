local mason = {
  { "williamboman/mason.nvim", opts = {
    ensure_installed = {
      "rust-analyzer",
    },
  } },
}
return mason
