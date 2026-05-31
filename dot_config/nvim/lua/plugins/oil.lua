-- return {
--   "stevearc/oil.nvim",
--   opts = {},
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("oil").setup({
--       default_file_explorer = true,
--     })
--     -- open file explorer
--     vim.keymap.set("n", "<leader>ex", ":Oil<CR>", { desc = "Open file explorer" })
--   end,
--   view_options = {
--     show_hidden = true,
--     is_hidden_file = function(name, bufnr)
--       return vim.startswith(name, ".")
--     end,
--     is_always_hidden = function(name, bufnr)
--       return false
--     end,
--   },
-- }
return {
  "stevearc/oil.nvim",
  opts = {
    -- Optional: configure oil.nvim options here
    default_file_explorer = false, -- Don't replace nvim-tree or neo-tree by default
  },
  keys = {
    {
      "-", -- Press `-` to open Oil in the current directory
      function()
        require("oil").open()
      end,
      desc = "Open parent directory with Oil",
    },
    {
      "<leader>fo", -- Optional: leader shortcut for Oil
      function()
        require("oil").open()
      end,
      desc = "Open Oil file explorer",
    },
  },
}
