return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end, { desc = "Remove file from harpoon" })
    vim.keymap.set("n", "<leader>ho", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end, { desc = "Move to harpoon item 1" })
    vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end, { desc = "Move to harpoon item 2" })
    vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end, { desc = "Move to harpoon item 3" })
    vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end, { desc = "Move to harpoon item 4" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  end
}
