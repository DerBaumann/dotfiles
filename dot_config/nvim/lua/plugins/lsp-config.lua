return {
  "neovim/nvim-lspconfig",
  init_options = {
    userLanguages = {
      rust = "html",
    },
  },
  opts = {
    setup = {
      svelte = function(_, opts)
        opts.filetypes = { "svelte", "svx" }
      end,
    },
  },
}
