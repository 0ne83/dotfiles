return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>ue",
        function()
          require("edgy").toggle()
        end,
        desc = "Edgy Toggle",
      },
    -- stylua: ignore
    { "<leader>uE", function() require("edgy").select() end, desc = "Edgy Select Window" },
    },
    opts = function()
      local opts = {
        bottom = {
          {
            ft = "toggleterm",
            title = "Terminal 1",
            size = { height = 0.25 }, -- Adjust height as needed
            pinned = true,
            collapsed = false,
            filter = function(buf)
              return vim.b[buf].toggle_number == 1
            end,
            open = function()
              vim.cmd("ToggleTerm direction=horizontal 1")
            end,
          },
          {
            ft = "toggleterm",
            title = "Terminal 2",
            pinned = true,
            collapsed = false,
            size = { height = 0.25 }, -- Adjust height as needed
            filter = function(buf)
              return vim.b[buf].toggle_number == 2
            end,
            open = function()
              vim.cmd("ToggleTerm 2 direction=horizontal 2")
            end,
          },
          "Trouble",
          { ft = "qf", title = "QuickFix" },
          {
            ft = "help",
            size = { height = 20 },
            -- don't open help files in edgy that we're editing
            filter = function(buf)
              return vim.bo[buf].buftype == "help"
            end,
          },
          {
            title = "Task Runner",
            ft = "OverseerList",
            size = { height = 0.25 },
            filter = function(buf)
              return vim.bo[buf].filetype == "OverseerList"
            end,
            open = function()
              require("overseer").open({ direction = "bottom" })
            end,
          },
        },
        left = {
          {
            title = "Neo-Tree",
            ft = "neo-tree",
            pinned = true,
            collapsed = false,
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end,
            size = { width = 0.1 },
            open = "Neotree position=right filesystem",
          },
          {
            title = "Neo-Tree Git",
            ft = "neo-tree",
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "git_status"
            end,
            pinned = true,
            collapsed = true, -- show window as closed/collapsed on start
            open = "Neotree position=right git_status",
            size = { width = 0.1 },
          },
          -- {
          --   title = "Compiler Tasks",
          --   ft = "OverseerList",
          --   size = { width = 0.2 },
          --   filter = function(buf)
          --     return vim.bo[buf].filetype == "OverseerList"
          --   end,
          --   -- open = function()
          --   --   vim.cmd("CompilerOpen")
          --   -- end,
          --   open = function()
          --     -- Use Overseer's termopen strategy
          --     require("overseer").run_template({
          --       -- customize task options here
          --       strategy = "termopen", -- this is the terminal strategy for running tasks
          --     })
          --   end,
          -- },
        },
        right = {
          { title = "Grug Far", ft = "grug-far", size = { width = 0.4 } },
          {
            ft = "noice",
            size = { width = 0.3 },
            filter = function(buf, win)
              return vim.api.nvim_win_get_config(win).relative == ""
            end,
          },
        },
        keys = {},
      }

      return opts
    end,
  },
}
