return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "vimdoc", "lua", "javascript", "typescript", "python", "c", "markdown", "markdown_inline", "latex" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end
  },
  { "nvim-treesitter/playground" }
}
