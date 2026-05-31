return {
  "uga-rosa/ccc.nvim",
  config = function()
    local ccc = require("ccc")
    ccc.setup()

    vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>", { desc = "Open ccc color picker" })
    vim.keymap.set("n", "<leader>uH", "<cmd>CccHighlighterToggle<CR>", { desc = "Toggle ccc highlighting" })
  end,
}
