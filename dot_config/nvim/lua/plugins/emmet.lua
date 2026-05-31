return {
  "mattn/emmet-vim",
  init = function()
    vim.g.user_emmet_install_global = 0
    vim.g.user_emmet_leader_key = "<C-e>" -- Or "<C-e>", up to you
  end,
  config = function()
    -- Enable Emmet for 'templ' filetype
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "templ",
      callback = function()
        vim.cmd("EmmetInstall")
      end,
    })

    vim.g.user_emmet_settings = {
      templ = {
        extends = "html",
      },
      php = {
        extends = "html",
      },
    }
    vim.g.user_emmet_leader_key = "<C-e>"
  end,
}
