return {
  { -- Override `nvim-tree` plugin
    "nvim-tree/nvim-tree.lua",
    opts = require("configs.ui").nvim_tree,
  },
  { -- Breadcrumbs
    "Bekaboo/dropbar.nvim",
    -- Optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },
}
