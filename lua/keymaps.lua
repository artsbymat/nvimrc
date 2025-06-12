-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { desc = "Disable h key" })
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { desc = "Disable l key" })
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { desc = "Disable k key" })
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { desc = "Disable j key" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
