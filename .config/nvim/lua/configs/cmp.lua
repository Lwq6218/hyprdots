---@module "cmp.init"
---@diagnostic disable-next-line: assign-type-mismatch
local cmp = require "cmp"
--@type cmp.ConfigSchema
local nv_options = require "nvchad.configs.cmp"
local options = {
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
  },
}
return vim.tbl_deep_extend("force", nv_options, options)
