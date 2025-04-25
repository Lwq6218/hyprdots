local M = {}

M.treesitter = {

  ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "css",
    "lua",
    "luadoc",
    "markdown",
    "markdown_inline",
    "query",
    "vim",
    "vimdoc",
    "json",
    "javascript",
    "typescript",
    "tsx",
  },
  -- Autoinstall languages that are not installed
  auto_install = true,
  highlight = {
    enable = true,
    -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
    --  If you are experiencing weird indenting issues, add the language to
    --  the list of additional_vim_regex_highlighting and disabled languages for indent.
    additional_vim_regex_highlighting = { "ruby" },
  },
  indent = { enable = true, disable = { "ruby" } },
}
return M
