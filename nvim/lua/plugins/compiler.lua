return {
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },

    opts = {
      task_list = {
        direction = "left",
        min_height = 10,
        max_width = 10,
        max_height = 10,
        default_detail = 1,
      },
      strategy = {
        "terminal",
        direction = "horizontal", -- Terminal direction (can be "horizontal", "vertical", etc.)
        size = 15, -- Size of the terminal
        open_on_start = false, -- Automatically open terminal when task starts
        close_on_exit = false, -- Do not close the terminal after task completes
        quit_on_exit = "never", -- Keep the terminal window open after task exits
      },
    },
  },
}
