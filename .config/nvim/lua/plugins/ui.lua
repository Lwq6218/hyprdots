return {
  { -- Override `nvim-tree` plugin
    "nvim-tree/nvim-tree.lua",
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
}
