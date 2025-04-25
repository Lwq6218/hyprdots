local t = {
  ["*"] = { "typos_lsp" },
  Agda = { "agda_ls" },
  Angular = { "angularls" },
  Arduino = { "arduino_language_server" },
  Astro = { "astro", "stylelint_lsp", "tailwindcss" },
  AWK = { "awk_ls" },
  Bash = { "bashls", "shellcheck", "shfmt" },
  ["BUILD.Bazel"] = { "starlark_rust" }, -- Bazel
  bzl = { "starlark_rust" }, -- Bazel
  C = { "clangd", "clang-format" },
  Clojure = { "clojure_lsp", "zprint", "clj-kondo" },
  CMake = { "cmake" },
  CMakeCache = { "cmake" },
  COBOL = { "cobol_ls" },
  conf = { "autotools_ls" }, -- Autoconf
  ConTeXt = { "texlab" },
  Coq = { "coq_lsp" },
  Cpp = { "clangd", "clang-format" },
  Crystal = { "crystalline" },
  Cucumber = { "cucumber_language_server" },
  Cypher = { "cypher_ls" },
  csh = { "bashls", "shellcheck", "shfmt" },
  CS = { "ominisharp", "csharpier" }, -- C#
  CSS = { "cssls", "stylelint_lsp", "tailwindcss" },
  D = { "serve_d" },
  Dart = { "dartls" },
  Dhall = { "dhall_lsp_server", "purescriptls", "purescript-tidy" },
  Dockerfile = { "dockerls", "docker_compose_language_service" },
  Dot = { "dotls" },
  Elixir = { "lexical" },
  Elm = { "elmls", "elm-format" },
  Erlang = { "elp" },
  Erg = { "erg_language_server" },
  Fennel = { "fennel_ls" },
  Flux = { "flux_lsp" },
  Fortran = { "fortls" },
  FSharp = { "fsautocomplete" }, -- F#
  genie = { "vala_ls" }, -- Vala
  Go = { "gopls", "goimports", "golangci_lint_ls" },
  GraphQL = { "graphql" },
  Groovy = { "groovyls", "gralde_ls" },
  Hack = { "hhvm" },
  Haskell = { "hls", "ormolu", "hlint" },
  Haxe = { "haxe_language_server" },
  Helm = { "helm_ls" },
  Hoon = { "hoon_ls" },
  HTML = { "html", "angularls", "tailwindcss" },
  Hyprlang = { "hyprls" },
  Idris2 = { "idris2_lsp" },
  Java = { "jdtls", "checkstyle", "google-java-format" },
  JavaScript = { "vtsls", "prettierd", "eslint_d", "eslint", "stylelint_lsp", "tailwindcss" },
  JavaScriptReact = { "vtsls", "prettierd", "eslint_d", "eslint", "stylelint_lsp", "tailwindcss" },
  Jinja = { "jinja_lsp" },
  jq = { "jqls" },
  JSON = { "jsonls", "spectral" },
  Jsonnet = { "jsonnet_ls" },
  Julia = { "julials" },
  Kotlin = { "kotlin_language_server", "gradle_ls" },
  ksh = { "bashls", "shellcheck", "shfmt" },
  LaTeX = { "texlab" },
  libsonnet = { "jsonnet_ls" },
  Lean = { "leanls" },
  Lean3 = { "lean-language-server", "lean3ls" },
  Less = { "cssls", "stylelint_lsp", "tailwindcss" },
  Lua = { "lua_ls", "stylua" },
  Luau = { "luau_lsp", "stylua" },
  Make = { "autotools_ls" },
  Markdown = { "marksman" },
  ["Markdown.MDX"] = { "mdx_analyzer" },
  Matlab = { "matlab_ls" },
  Meson = { "mesonlsp" },
  mksh = { "bashls", "shellcheck", "shfmt" },
  Move = { "move_analyzer" },
  ncl = { "nickel_ls" }, -- Nickel
  Nginx = { "nginx_language_server" },
  Nickel = { "nickel_ls" },
  Nim = { "nim_langserver" },
  Ninja = { "autotools_ls" },
  Nix = { "nil_ls" },
  OCaml = { "ocamllsp", "ocamlformat" },
  p8 = { "pico8_ls" }, -- PICO-8
  Perl = { "perlnavigator", "raku_navigator" },
  pest = { "pest_ls" },
  PHP = { "phpactor", "psalm" },
  PlainTeX = { "texlab" },
  PowerShell = { "powershell_es" },
  Prisma = { "prismals" },
  Proto = { "pbls" }, -- Protobuf
  PureScript = { "purescriptls", "purescript-tidy" },
  Python = { "pyright", "ruff" },
  R = { "r_language_server" },
  Raku = { "raku_navigator" },
  Reason = { "reason_ls" },
  Rego = { "regal" },
  ReScript = { "rescriptls" },
  rst = { "esbonio" }, -- Sphinx
  Ruby = { "solargraph", "rubocop", "sorbet" },
  Rust = { "rust_analyzer" },
  Scala = { "metals" },
  SCSS = { "cssls", "stylelint_lsp", "tailwindcss" },
  sh = { "bashls", "shellcheck", "shfmt" },
  Slint = { "slint_lsp" },
  Smithy = { "smithy_ls" },
  SML = { "millet" },
  Solidity = { "solidity", "solang" },
  SQL = { "sqls" },
  star = { "starlark_rust" }, -- Bazel
  Svelte = { "svelte", "stylelint_lsp", "tailwindcss" },
  SystemVerilog = { "verible", "hdl_checker" },
  tcsh = { "bashls", "shellcheck", "shfmt" },
  Teal = { "teal_ls" },
  Terraform = { "terraformls", "tflint" },
  TeX = { "texlab" },
  Thrift = { "thriftls" },
  TOML = { "taplo" },
  TypeScript = { "vtsls", "prettierd", "eslint_d", "eslint", "angularls", "stylelint_lsp", "tailwindcss" },
  TypeScriptReact = { "vtsls", "prettierd", "eslint_d", "eslint", "stylelint_lsp", "tailwindcss" },
  Typst = { "typst_lsp" },
  V = { "v_analyzer" },
  Vala = { "vala_ls" },
  VB = { "ominisharp" },
  Verilog = { "verible", "hdl_checker" },
  Veryl = { "veryl_ls" },
  VHDL = { "vhdl_ls", "hdl_checker" },
  Vim = { "vimls" },
  Vlang = { "v_analyzer" },
  Vue = { "volar", "stylelint_lsp", "tailwindcss" },
  WGSL = { "wgsl_analyzer" },
  XML = { "lemminx" },
  YAML = { "yamlls", "spectral", "docker_compose_language_service", "azure_pipelines_ls" },
  YML = { "yamlls", "spectral", "docker_compose_language_service", "azure_pipelines_ls" },
  Zig = { "zls" },
  Zsh = { "bashls", "shellcheck" },
}

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  -- clangd = {},
  -- gopls = {},
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`ts_ls`) will work just fine
  -- ts_ls = {},
  -- Python

  pyright = {},
  ruff = {},
  -- React
  vtsls = {},
  prettierd = {},
  tailwindcss = {},
  eslint_d = {},
  --Bash
  bashls = {
    filetypes = { "sh", "zsh", "bash" },
  },

  --Lua
  lua_ls = {},
}

local ensure_installed = vim.tbl_keys(servers or {})
vim.list_extend(ensure_installed, {
  "stylua", -- Used to format Lua code
  "shfmt",
})

---@type lspconfig.Config
local default_lspconfig_setup_options = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
require("mason-tool-installer").setup { ensure_installed = ensure_installed }

require("mason-lspconfig").setup {
  ensure_installed = {},
  automatic_installation = false,
  handlers = {
    ---@param server_name string
    function(server_name)
      local server = servers[server_name] or {}
      ---@diagnostic disable-next-line: undefined-field
      lspconfig[server_name].setup(vim.tbl_deep_extend("force", default_lspconfig_setup_options, server))
    end,
    lua_ls = function()
      dofile(vim.g.base46_cache .. "lsp")
      require("nvchad.lsp").diagnostic_config()

      local settings = {
        Lua = {
          completion = {
            callSnippet = "Replace",
          },
          diagnostics = { disable = { "missing-fields" } },
        },
      }
      ---@diagnostic disable-next-line: undefined-field
      lspconfig.lua_ls.setup(vim.tbl_deep_extend("force", default_lspconfig_setup_options, {
        settings = settings,
      }))
    end,
  },
}
