-- ------------------------------------------------------------------------------------------------
-- Basic configurations file
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- 08/03/2024
-- ------------------------------------------------------------------------------------------------

-- Define my leader key
vim.g.mapleader = " "

-- Define my localleader key
vim.g.maplocalleader = "  "

-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false
-- Define std shell program
vim.opt.shell = "zsh"

-- Define encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Compatibility with VI
vim.opt.compatible = false

-- Max number commands in memory
vim.opt.history = 15

-- Show number lines
vim.opt.number = true

-- Show relative number lines
vim.opt.relativenumber = true

-- Show columns number
vim.opt.ruler = true

-- No create backup files
vim.opt.backup = false
vim.opt.writebackup = false

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

-- Height for the command line
vim.opt.cmdheight = 2

-- Show status line
vim.opt.laststatus = 2

-- Define the use space for the tabulation
vim.opt.expandtab = true

-- Autoread files
vim.opt.autoread = true

-- Define lines above cursor
vim.opt.scrolloff = 10

-- Define number control in tabulation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Active smart tabulation
vim.opt.smarttab = true

-- Active incremental search
vim.opt.incsearch = true

-- Active horizontal preview substituiton
vim.opt.inccommand = "split"

-- Desactive case sensitive
vim.opt.ignorecase = true

-- Active highlight in search
vim.opt.hlsearch = true

-- Jump between buffers without saving
vim.opt.hidden = true

-- Define foldmode by tabulation
vim.opt.foldmethod = "indent"

-- Active autoindent
vim.opt.autoindent = true

-- Smart break line actived
vim.opt.linebreak = true

-- Show recommendation in command line
vim.opt.wildmenu = true

-- Wrap lines
vim.opt.wrap = true

-- Define use to backspace key
vim.opt.backspace = { "start", "eol", "indent" }

-- Put new windows below current
vim.opt.splitbelow = true

-- Put new windows right of current
vim.opt.splitright = true

-- Define visible cursor in split
vim.opt.splitkeep = "cursor"

-- Desactive mouse support
vim.opt.mouse = ""

-- Active highlight cursor line
vim.opt.cursorline = true

-- Desactive show mode
vim.opt.showmode = false

-- Desactive fold-automatic
vim.opt.foldlevelstart = 99
