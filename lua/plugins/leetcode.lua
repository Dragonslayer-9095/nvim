-- ~/.config/nvim/lua/plugins/leetcode.lua
return {
  "kawre/leetcode.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lang = "cpp",
    cn = {
      enabled = false,
    },
  },
  event = "VeryLazy",
}
