return {
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
    opts = {
      enable_autocmd = false,
    },
    config = function()
      local get_option = vim.filetype.get_option
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.filetype.get_option = function(filetype, option)
        if option == "commentstring" then
          return require("ts_context_commentstring.internal").calculate_commentstring()
        else
          return get_option(filetype, option)
        end
      end
    end,
  },
}
