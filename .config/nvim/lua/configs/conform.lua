---@module "conform.init"
---@diagnostic disable-next-line: assign-type-mismatch
local conform = require "conform"

local options = {
  formatters_by_ft = {
    astro = { "stylelint", "prettierd", "eslint_d" },
    bash = { "shellcheck", "shfmt" },
    c = { "clang-format", lsp_format = "last" },
    clojure = { "zprint" },
    cpp = { "clang-format", lsp_format = "last" },
    cs = { "csharpier" }, -- C#
    csh = { "shellcheck", "shfmt" },
    css = { "stylelint", "prettierd" },
    elm = { "elm_format" },
    go = { "goimports", "gofmt" },
    haskell = { "ormolu" },
    html = { "prettierd" },
    java = { "google-java-format" },
    javascript = { "stylelint", "prettierd", "eslint_d" },
    javascriptreact = { "stylelint", "prettierd", "eslint_d" },
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
    ruby = { "rubocop" },
    rust = { "rustfmt" },
    sh = { "shellcheck", "shfmt" },
    svelte = { "stylelint", "prettierd", "eslint_d" },
    tcsh = { "shellcheck", "shfmt" },
    typescript = { "stylelint", "prettierd", "eslint_d" },
    typescriptreact = { "stylelint", "prettierd", "eslint_d" },
    vue = { "stylelint", "prettierd", "eslint_d" },
    zsh = { "shellcheck", "shfmt" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_format = "fallback",
  },
}

return options
