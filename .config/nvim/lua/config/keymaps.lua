local builtin = require("telescope.builtin")

-- Basic Keymaps
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>", { desc = "Clear Search Highlight" })
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit Neovim" })

-- Window Navigation
vim.keymap.set("n", "<leader><Left>", "<C-w><C-h>", { desc = "Move Focus to Left Window" })
vim.keymap.set("n", "<leader><Right>", "<C-w><C-l>", { desc = "Move Focus to Right Window" })
vim.keymap.set("n", "<leader><Down>", "<C-w><C-j>", { desc = "Move Focus to Lower Window" })
vim.keymap.set("n", "<leader><Up>", "<C-w><C-k>", { desc = "Move Focus to Above Window" })

-- File Navigation
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Parent Directory" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })

-- AUTOCOMMANDS

-- Highlight When Yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

