-- return {
--   "folke/tokyonight.nvim",
--   opts = {
--     transparent = true,
--     style = "storm", -- or "night", "moon", etc. (pick your vibe)
--     terminal_colors = true,
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
-- }

return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
        transparent_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
