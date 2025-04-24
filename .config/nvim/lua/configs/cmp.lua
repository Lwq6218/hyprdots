---@module "cmp.init"
---@diagnostic disable-next-line: assign-type-mismatch
local cmp = require "cmp"
--@type cmp.ConfigSchema
local mapping = require "nvchad.configs.cmp"
local options = {
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-n>"] = nil,
    ["<C-p>"] = nil,
  },
}
return vim.tbl_deep_extend("force", mapping, options)
