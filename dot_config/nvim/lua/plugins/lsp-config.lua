return {
  "neovim/nvim-lspconfig",
  init_options = {
    userLanguages = {
      -- rust = "html",
    },
  },
  opts = {
    setup = {
      svelte = function(_, opts)
        opts.filetypes = { "svelte", "svx" }
      end,
    },
    servers = {
      emmet_language_server = {
        filetypes = {
          "html",
          "blade",
          "php",
          "css",
          "scss",
          "javascriptreact",
          "typescriptreact",
          "templ",
        },
        init_options = {
          includeLanguages = {
            templ = "html",
          },
        },
      },
      tailwindcss = {
        filetypes = {
          "html",
          "blade",
          "php",
          "css",
          "scss",
          "javascriptreact",
          "typescriptreact",
          "templ",
        },
        init_options = {
          includeLanguages = {
            templ = "html",
          },
        },
      },
      html = {
        filetypes = {
          "html",
          "templ",
        },
      },
    },
  },
}
