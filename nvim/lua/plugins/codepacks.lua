return {

  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "cpp" } },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "typescript-language-server",
        "prettier",
        "black",
        "clang-format",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black" },
        ["c"] = { "my_formatter" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
    settings = {
      clangd = {
        inactiveRegions = {
          opacity = 0.0,
        },
      },
    },
  },
}
