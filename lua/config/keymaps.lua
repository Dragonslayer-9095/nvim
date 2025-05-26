-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree reveal<cr>", { desc = "Reveal current file in Neo-tree" })

vim.keymap.set("n", "<leader>ct", function()
  vim.cmd("0r ~/.config/nvim/templates/cp.cpp")
  vim.defer_fn(function()
    vim.fn.search("// cursor", "cw")
    vim.cmd("normal! dd")
    vim.cmd("normal! zz^")
    vim.cmd("normal! O\t")
    vim.cmd("startinsert")
  end, 10)
end, { desc = "Insert CP template" })
