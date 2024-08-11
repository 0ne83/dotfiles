return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<A-e>",
        function()
          require("neo-tree.command").execute({ focus = true, toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "night",
      on_colors = function(colors)
        colors.bg = "#101317" -- Set background color to black
      end,
    },
  },
  { "Everblush/nvim", name = "everblush" },
}
