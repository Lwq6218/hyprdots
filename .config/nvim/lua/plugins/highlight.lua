return {
  {
    "nvim-treesitter/nvim-treesitter",
  },
  { -- Rainbow pair colorization
    "hiphish/rainbow-delimiters.nvim",
    lazy = false,
    config = function()
      require "configs.highlight"
    end,
  },
  { -- Sticky scroll
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
  },
}
