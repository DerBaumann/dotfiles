return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/org/**/*",
      org_default_notes_file = "~/org/default.org",
    })
    -- Experimental LSP support
    vim.lsp.enable("org")
  end,
}
