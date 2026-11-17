return {
  "neovim/nvim-lspconfig",
  init_options = {
    userLanguages = {
      -- rust = "html",
      templ = "html",
    },
    -- includeLanguages = {
    --   templ = "html",
    -- },
  },

  emmet_language_server = {
    include = {
      "html",
      "css",
      "javascriptreact",
      "typescriptreact",
      "templ",
      -- "rust",
    },
<<<<<<< Updated upstream
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
=======
    filetypes = {
      "html",
      "blade",
      "php",
      "css",
      "scss",
      "javascriptreact",
      "typescriptreact",
      "templ",
      -- "rust",
    },
    init_options = {
      includeLanguages = {
        templ = "html",
>>>>>>> Stashed changes
      },
    },
  },

  tailwindcss = {
    filetypes = {
      "html",
      "css",
      "javascriptreact",
      "typescriptreact",
      "templ",
      -- "rust",
    },
    init_options = { userLanguages = { templ = "html" } },
  },
}
