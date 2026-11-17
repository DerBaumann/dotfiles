-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.filetype.add({
  extension = {
    svx = "svelte",
  },
})
vim.filetype.add({ extension = { templ = "templ" } })

vim.filetype.add({ pattern = {
  [".*%.django%.html"] = "htmldjango",
} })

vim.g.maplocalleader = ","
vim.lsp.enable("gleam")

vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

-- vim.lsp.config("rust_analyzer", {
-- Other Configs ...
-- settings = {
-- ["rust-analyzer"] = {
-- Other Settings ...
-- cargo = {
-- features = "all", -- Enable all features
-- },
-- procMacro = {
-- enable = true,
-- ignored = {
--   leptos_macro = {
--     -- optional: --
--     -- "component",
--     "server",
--   },
-- },
--       },
--     },
--   },
-- })

vim.lsp.config("emmet_language_server", {
  include = {
    "html",
    "css",
    "javascriptreact",
    "typescriptreact",
    "templ",
    -- "rust",
  },
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
    },
  },
})

vim.lsp.enable("emmet_language_server")

vim.lsp.config("tailwindcss", {
  filetypes = {
    "html",
    "css",
    "javascriptreact",
    "typescriptreact",
    "templ",
    -- "rust",
  },
  init_options = { userLanguages = { templ = "html" } },
})
