return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "svelte", "markdown" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,
      max_lines = 2, -- Shows the parent context up to 2 lines above
    },
  },
  {
    "rayliwell/tree-sitter-rstml",
    dependencies = { "nvim-treesitter" },
    build = ":TSUpdate",
    config = function()
      require("tree-sitter-rstml").setup()
    end,
  },
  -- -- Automatic tag closing and renaming (optional but highly recommended)
  -- {
  --   "windwp/nvim-ts-autotag",
  --   config = function()
  --     require("nvim-ts-autotag").setup()
  --   end,
  -- },
}
