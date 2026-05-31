-- cycle buffers
vim.keymap.set("n", "<tab>", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<s-tab>", vim.cmd.bprev, { desc = "Go to previous buffer" })

-- close buffers
vim.keymap.set("n", "<leader>xb", vim.cmd.bd, { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>xB", ":bd!<CR>", { desc = "Close current buffer without saving" })

-- close panes
vim.keymap.set("n", "<leader>xp", vim.cmd.q, { desc = "Close current pane" })

-- write buffer
vim.keymap.set("n", "<C-s>", vim.cmd.w, { desc = "Write active buffer" })

-- Keybinds for splitting windows
vim.keymap.set("n", "<leader>sh", vim.cmd.vsplit, { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", vim.cmd.split, { desc = "Split window vertically" })

-- Move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Move line under cursor to same line with a space
vim.keymap.set("n", "J", "mzJ`z", { desc = "Move line under cursor to same line with a space" })

-- Toggle comment
-- vim.keymap.set("n", "<leader>/", "gcc", { desc = "Text" })
-- vim.keymap.set("v", "<leader>/", "gc", { desc = "Text" })

-- Make cursor centered when scrolling and down/up and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Text" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Text" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Text" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Text" })

-- delete and paste whilst still keeping current string in clipboard
vim.keymap.set(
	"x",
	"<leader>p",
	'"_dP',
	{ desc = "Delete marked text and paste whilst preserving the current clipboard" }
)

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to the system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to the system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy to the system clipboard" })

-- delete to void register
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete to the void register" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete to the void register" })

-- Use Ctrl + c to enter normal mode from insert (dunno if this will be useful)
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Text" })

-- vim.keymap.set("n", "Q", "<nop>", { desc = "Text" })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Text" })

vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format active buffer" })
vim.keymap.set("n", "<leader>ci", vim.lsp.buf.hover, { desc = "Show more information about the code under the cursor" })
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.api.nvim_set_keymap('n', '<space>ce', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Show Diagnostic (errors)"})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Text" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Text" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Text" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Text" })

-- <leader>s to change all occurences of word <leader>x to make file executable
vim.keymap.set(
	"n",
	"<leader>r",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Edit all instances of the word under the cursor" }
)
vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" })
