return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    -- config = function()
    -- require("mason-lspconfig").setup({
    -- ensure_installed = { "lua_ls", "tsserver", "pyright", "bashls", "clangd" }
    -- })
    -- end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      local function lspsetup(lsp)
        lspconfig[lsp].setup({
          capabilities = capabilities,
        })
      end

      -- lspconfig.volar.setup({
      -- capabilities = capabilities,
      --   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
      -- })
      -- lspconfig.ts_ls.setup({
      --   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" }, -- no 'vue' here
      -- })

      -- lspsetup("volar")

      -- local mason_registry = require("mason-registry")
      -- local vue_language_server = mason_registry.get_package("vue_language_server"):get_install_path()
      -- 	.. "/node_modules/@vue/language-server"

      -- lspconfig.ts_ls.setup({
      -- 	capabilities = capabilities,
      -- 	init_options = {
      -- 		plugins = {
      -- 			{
      -- 				name = "@vue/typescript-plugin",
      -- 				-- location = vue_language_server,
      --            location = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server',
      -- 				languages = { "vue" },
      -- 			},
      -- 		},
      -- 	},
      -- 	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
      -- })

      lspconfig.volar.setup({
        filetypes = {
          "typescript",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "json",
        },
        init_options = {
          typescript = {
            -- optional but recommended: use the same TypeScript version everywhere
            tsdk = vim.fn.stdpath("data")
                .. "/mason/packages/typescript-language-server/node_modules/typescript/lib",
          },
        },
      })

      lspsetup("lua_ls")
      lspsetup("denols")
      lspsetup("html")
      lspsetup("pyright")
      lspsetup("bashls")
      lspsetup("clangd")
      lspsetup("gopls")
      lspsetup("emmet_ls")
      lspsetup("astro")
      lspsetup("svelte")
      lspsetup("markdown_oxide")
      lspsetup("grammarly")
      lspsetup("tailwindcss")
      lspsetup("hls")
      lspsetup("sqlls")
      lspsetup("cssls")
      lspsetup("css_variables")
      lspsetup("cssmodules_ls")
      lspsetup("templ")
      lspsetup("rust_analyzer")
    end,
  },
}
