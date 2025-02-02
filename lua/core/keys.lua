-- ------------------------------------------------------------------------------------------------
-- Config personal keymaps
-- Author: Valdigleis (valdigleis@gmail.com)
-- Date: 18/09/2024
-- ------------------------------------------------------------------------------------------------


local key = vim.keymap


-- ------------------------------------------------------------------------------------------------
-- Basic keymaps
-- ------------------------------------------------------------------------------------------------
key.set('n', '<leader>qq', ':qall!<CR>', { silent = true, desc = 'Quit without save' })
key.set('n', '<leader>wq', ':wqall<CR>', { silent = true, desc = 'Save all and quit' })
key.set('n', '<leader><CR>', ':bd<CR>', { silent = true, desc = 'Delete buffer' })
key.set('n', '+', '<C-a>', { silent = true, desc = 'Increment value' })
key.set('n', '-', '<C-x>', { silent = true, desc = 'Decrement value' })
key.set('n', 'dw', 'vb"-d', { silent = true, desc = 'Delete a word'})
key.set('n', '<C-a>', 'gg<S-v>G', { silent = true, desc = 'Select all' })


-- ------------------------------------------------------------------------------------------------
-- Personal functions keymaps
-- ------------------------------------------------------------------------------------------------
key.set('n', '<leader>bk', ":e ~/.config/nvim/lua/core/keys.lua<CR>", { silent = true, desc = 'Open Keymaps' })


-- ------------------------------------------------------------------------------------------------
-- Telescope keymaps
-- ------------------------------------------------------------------------------------------------
local builtin = require('telescope.builtin')

-- Basic telescope
key.set('n', '<leader>fb', builtin.buffers, { silent = true, desc = 'Telescope buffers' })
key.set('n', '<leader>ff', builtin.find_files, { silent = true, desc = 'Telescope find files' })
key.set('n', '<leader>fF', builtin.current_buffer_fuzzy_find, { silent = true, desc = 'Live fuzzy search inside of the currently open buffer' })
key.set('n', '<leader>fg', builtin.live_grep, { silent = true, desc = 'Telescope live grep' })
key.set('v', '<leader>fG', builtin.grep_string, { silent = true, desc = 'Searches the string under your cursor or selection' })
key.set('n', '<leader>fh', builtin.help_tags, { silent = true, desc = 'Telescope help tags' })
key.set('n', '<leader>fr', builtin.oldfiles, { silent = true, desc = 'Lists previously open files' })

-- More telescope Vim Pickers
key.set('n', '<leader>ta', builtin.autocommands, { silent = true, desc = 'Lists vim autocommands and goes to their declaration on <cr>' })
key.set('n', '<leader>tb', builtin.current_buffer_tags, { silent = true, desc = 'Lists all of the tags for the currently open buffer, with a preview' })
key.set('n', '<leader>tc', builtin.commands, { silent = true, desc = 'Show and runs commands' })
key.set('n', '<leader>tC', builtin.command_history, { silent = true, desc = 'Show commands history' })
key.set('n', '<leader>tf', builtin.filetypes, { silent = true, desc = 'Lists all available filetypes' })
key.set('n', '<leader>th', builtin.search_history, { silent = true, desc = 'Lists searches that were executed recently, reruns with <cr>' })
key.set('n', '<leader>tH', builtin.highlights, { silent = true, desc = 'Lists all available highlights' })
key.set('n', '<leader>tj', builtin.jumplist, { silent = true, desc = 'Lists Jump List entries' })
key.set('n', '<leader>tk', builtin.keymaps, { silent = true, desc = 'Show mode keymappings' })
key.set('n', '<leader>tl', builtin.loclist, { silent = true, desc = 'Lists items from the current windows location list' })
key.set('n', '<leader>tm', builtin.man_pages, { silent = true, desc = 'Lists manpage entries, opens them in a help window on <cr>' })
key.set('n', '<leader>tM', builtin.marks, { silent = true, desc = 'Lists vim marks and their value' })
key.set('n', '<leader>tP', builtin.pickers, { silent = true, desc = 'Lists the previous pickers incl. multi-selections' })
key.set('n', '<leader>tr', builtin.registers, { silent = true, desc = 'Lists vim registers, pastes the contents of the register on <cr>' })
key.set('n', '<leader>tR', builtin.resume, { silent = true, desc = 'Lists the results incl. multi-selections of the previous picker' })
key.set('n', '<leader>ts', builtin.colorscheme, { silent = true, desc = 'Lists available colorschemes and applies them on <cr>' })
key.set('n', '<leader>tS', builtin.spell_suggest, { silent = true, desc = 'Lists spelling suggestions for the word under the cursor, replaces word using <cr>' })
key.set('n', '<leader>tt', builtin.tags, { silent = true, desc = 'Lists tags in current directory with tag location file preview' })
key.set('n', '<leader>tT', builtin.help_tags, { silent = true, desc = 'Lists available help tags and opens a new window with the relevant help info on <cr>' })
key.set('n', '<leader>tv', builtin.vim_options, { silent = true, desc = 'Lists vim options, allows you to edit the current value on <cr>' })

-- Codes and LSP
key.set('n', '<leader>lc', builtin.lsp_incoming_calls, { silent = true, desc = 'Lists LSP incoming calls for word under the cursor' })
key.set('n', '<leader>lC', builtin.lsp_outgoing_calls, { silent = true, desc = 'Lists LSP outgoing calls for word under the cursor' })
key.set('n', '<leader>lD', builtin.diagnostics, { silent = true, desc = 'Lists Diagnostics for all open buffers or a specific buffer.' })
key.set('n', '<leader>ld', builtin.lsp_definitions, { silent = true, desc = 'Goto|Show the definition of the word under the cursor.' })
key.set('n', '<leader>lf', builtin.quickfix, { silent = true, desc = 'Lists items in the quickfix list' })
key.set('n', '<leader>lF', builtin.quickfixhistory, { silent = true, desc = 'Lists all quickfix lists in your history and open them with builtin.quickfix or quickfix window' })
key.set('n', '<leader>li', builtin.lsp_implementations, { silent = true, desc = 'Goto|Show the implementation of the word under the cursor.' })
key.set('n', '<leader>lr', builtin.lsp_references, { silent = true, desc = 'Lists LSP references for word under the cursor' })
key.set('n', '<leader>ls', builtin.lsp_workspace_symbols, { silent = true, desc = 'Lists LSP document symbols in the current workspace' })
key.set('n', '<leader>lS', builtin.lsp_document_symbols, { silent = true, desc = 'Lists LSP document symbols in the current buffer' })
key.set('n', '<leader>lt', builtin.lsp_type_definitions, { silent = true, desc = 'Goto|Show the definition of the type of the word under the cursor' })
key.set('n', '<leader>lT', builtin.treesitter, { silent = true, desc = 'Lists Function names, variables, from Treesitter' })

-- Extensions
key.set('n', ';h', ':Telescope hoogle<CR>', { silent = true, desc = 'Open internal Hoogle view' })

-- ------------------------------------------------------------------------------------------------
-- Lazy keymap
-- ------------------------------------------------------------------------------------------------
key.set('n', '<leader><leader>', ':Lazy<CR>', { silent = true, desc = 'Open terminal manager' })


-- ------------------------------------------------------------------------------------------------
-- Toggleterm keymaps
-- ------------------------------------------------------------------------------------------------
--key.set('n', ';t', ':term_map.toggle<CR>', { silent = true, desc = 'Open terminal manager' })


-- ------------------------------------------------------------------------------------------------
-- Live-server keymaps
-- ------------------------------------------------------------------------------------------------
key.set('n', ';l', ':LiveServerStart<CR>', { silent = true, desc = 'Start the live server' })
key.set('n', ';L', ':LiveServerStop<CR>', { silent = true, desc = 'Stop the live server' })


-- ------------------------------------------------------------------------------------------------
-- Neogen keymaps
-- ------------------------------------------------------------------------------------------------
key.set('n', '<leader>cc', function() require("neogen").generate({}) end, { silent = true, desc = 'Neogen Comment' })


-- ------------------------------------------------------------------------------------------------
-- Mason keymaps
-- ------------------------------------------------------------------------------------------------
key.set('n', ';m', ':Mason<CR>', { silent = true, desc = 'Open Mason' })
key.set('n', ';M', ':MasonUpdate<CR>', { silent = true, desc = 'Open Mason' })



