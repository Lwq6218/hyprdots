return {
  { -- Override `nvim-tree` plugin
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = require("configs.ui").nvim_tree,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<Esc>"] = require("telescope.actions").close,
      }

      -- or
      -- table.insert(conf.defaults.mappings.i, your table)
      return conf
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = function()
      return require("configs.ui").noice
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
}
