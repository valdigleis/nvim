-- ------------------------------------------------------------------------------------------------
-- Config file to key mappings
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Remove default keys
keyset("n", "<C-a>", "<nop>", opts) 
keyset("n", "<C-x>", "<nop>", opts) 
keyset("n", "gg<S-v>G", "<nop>", opts) 

keyset("n", "<C-w>h", "<nop>", opts) 
keyset("n", "<C-w>l", "<nop>", opts)
keyset("n", "<C-w>k", "<nop>", opts)

keyset("n", "<C-w>j", "<nop>", opts)
keyset("n", "<C-w><", "<nop>", opts) 
keyset("n", "<C-w>>", "<nop>", opts)

keyset("n", "<C-w>+", "<nop>", opts)
keyset("n", "<C-w>-", "<nop>", opts)
keyset("n", "<C-w>w", "<nop>", opts)

keyset("n", "<C-w>s", "<nop>", opts)
keyset("n", "<C-w>v", "<nop>", opts)
keyset("n", "<C-w>d", "<nop>", opts)

keyset("n", "<C-w>o", "<nop>", opts)
keyset("n", "<C-w>q", "<nop>", opts)
keyset("n", "<C-w>T", "<nop>", opts)

keyset("n", "<C-w>x", "<nop>", opts)
keyset("n", "<C-w>_", "<nop>", opts)
keyset("n", "<C-w>|", "<nop>", opts)

keyset("n", "<C-w>i", "<nop>", opts)

keyset("n", "K", "<nop>", opts)
