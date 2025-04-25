---@module "conform.init"
---@diagnostic disable-next-line: assign-type-mismatch
local conform = require "conform"

local options = {
  formatters_by_ft = {
    bash = { "shellcheck", "shfmt" },
    sh = { "shellcheck", "shfmt" },
    zsh = { "shellcheck" },
    c = { "clang-format", lsp_format = "last" },
    cpp = { "clang-format", lsp_format = "last" },
    javascript = { "prettierd", "eslint_d" },
    javascriptreact = { "prettierd", "eslint_d" },
    typescript = { "prettierd", "eslint_d" },
    typescriptreact = { "prettierd", "eslint_d" },
    vue = { "prettierd", "eslint_d" },
    css = { "prettierd" },
    go = { "goimports", "gofmt" },
    html = { "prettierd" },
    java = { "google-java-format" },
    ksh = { "shellcheck", "shfmt" },
    lua = { "stylua" },
    mksh = { "shellcheck", "shfmt" },
    python = function(bufnr)
      if conform.get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_format = "fallback",
  },
}

return options
