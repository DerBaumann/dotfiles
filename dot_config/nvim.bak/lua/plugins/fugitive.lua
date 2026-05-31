return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>cg", vim.cmd.Git, { desc = "Browse git" })
  end
}
