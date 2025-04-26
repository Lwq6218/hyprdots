require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-f>", "<C-f>zz")
map("n", "<C-b>", "<C-b>zz")
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "file save" })
map({ "n", "i", "v" }, "<C-z>", "<cmd> undo <cr>", { desc = "history undo" })
map({ "n", "i", "v" }, "<C-y>", "<cmd> redo <cr>", { desc = "history redo" })

-- map({ "n", "i", "v" }, "<C-f>", function()
--   if vim.bo.filetype == "TelescopePrompt" then
--     vim.cmd "q!"
--   else
--     vim.cmd "Telescope current_buffer_fuzzy_find"
--   end
-- end, { desc = "search search in current buffer" })
-- map({ "n", "i", "v" }, "<A-f>", function()
--   if vim.bo.filetype == "TelescopePrompt" then
--     vim.cmd "q!"
--   else
--     vim.cmd "Telescope live_grep"
--   end
-- end, { desc = "search search across project" })

map({ "n", "i", "v", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggle vertical term" })
map({ "n", "i", "v", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggle horizontal term" })
map({ "n", "i", "v", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map("n", "gb", "<C-o>", { desc = "jump jump back" })
map("n", "gh", vim.lsp.buf.hover, { desc = "LSP hover" }) -- 等同于 `K`
map("n", "ge", vim.diagnostic.open_float, { desc = "LSP show diagnostics" }) -- 唤出诊断信息，这个没有默认快捷键，我推荐大家都映射一下

map({ "n", "i", "v" }, "<F2>", function()
  if vim.bo.filetype == "NvimTree" then
    -- 如果在文件浏览器中，调用 NvimTree 的重命名功能
    require("nvim-tree.api").fs.rename()
  else
    require "nvchad.lsp.renamer"()
  end
end, { desc = "LSP rename" }) -- 重命名符号，等同于 NvChad 的快捷键 `<leader>ra`
map({ "n", "i", "v" }, "<F12>", vim.lsp.buf.definition, { desc = "LSP rename" }) -- 跳转到定义，等同于 `gd`
