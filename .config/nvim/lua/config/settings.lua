-- Enable Line Numbers
vim.opt.number = true

-- Enable Mouse
vim.opt.mouse = "a"

-- Disable Mode Display
vim.opt.showmode = false

-- Sync Clipboard Between OS and NeoVim
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

-- Enable Break Indent
vim.opt.breakindent = true

-- Save Undo History
vim.opt.undofile = true

-- Case-Insensitive Searching UNLESS \C or Capital Letters in Search Term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn
vim.opt.signcolumn = "yes"

-- Decrease Update Time
vim.opt.updatetime = 250

-- Decrease Mapped Sequence Wait Time
vim.opt.timeoutlen = 300

-- Configure How Splits Should Be Opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set Witespace Character Display
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Live Substitution Preview
vim.opt.inccommand = "split"

-- Show Cursor Line
vim.opt.cursorline = true

-- Minimum Number of Screen Lines to Keep Above/Below the Cursor
vim.opt.scrolloff = 10

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
