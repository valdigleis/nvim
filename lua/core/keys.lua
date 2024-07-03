-- ------------------------------------------------------------------------------------------------
-- Config file to key mappings
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Increment/decrement
keyset("n", "+", "<C-a>")
keyset("n", "-", "<C-x>")

-- Select all
keyset("n", "<C-a>", "gg<S-v>G")

-- New tab
keyset("n", "<leader>nt", ":tabedit")

-- Close tab
keyset("n", "<leader>bd", ":bd<CR>", opts)

-- Split window
keyset("n", "<leader>sh", ":split<CR>", opts)
keyset("n", "<leader>sv", ":vsplit<CR>", opts)

-- Move window
keyset("n", "<leader>sl", "<C-w>h")
keyset("n", "<leader>sr", "<C-w>l")
keyset("n", "<leader>su", "<C-w>k")
keyset("n", "<leader>sd", "<C-w>j")

-- Resize window
keyset("n", "<leader>sL", "<C-w><")
keyset("n", "<leader>sR", "<C-w>>")
keyset("n", "<leader>sU", "<C-w>+")
keyset("n", "<leader>sD", "<C-w>-")


-- Live-server keys (start and stop)
keyset("n", "<leader>LL", ":LiveServerStart<CR>", opts)
keyset("n", "<leader>LD", ":LiveServerStop<CR>", opts)
keyset("n", "<leader>T", ":ToggleTerm<CR>", opts)

-- Keymaps for Lean Theorem Prove


