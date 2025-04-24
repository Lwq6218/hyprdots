---@type LazySpec
return {
  { -- Override `nvim-cmp` plugin
    "hrsh7th/nvim-cmp",
    opts = function()
      return require "configs.cmp"
    end,
  },
}
