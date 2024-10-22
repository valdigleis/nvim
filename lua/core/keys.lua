-- ------------------------------------------------------------------------------------------------
-- Config personal keymaps
-- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- Date: 18/09/2024
-- ------------------------------------------------------------------------------------------------

local key = vim.keymap

-- ------------------------------------------------------------------------------------------------
-- Telescope keymaps
-- ------------------------------------------------------------------------------------------------
local builtin = require('telescope.builtin')

-- Basic telescope
key.set('n', '<leader>fb', builtin.buffers,                   { desc = 'Telescope buffers' })
key.set('n', '<leader>ff', builtin.find_files,                { desc = 'Telescope find files' })
key.set('n', '<leader>fF', builtin.current_buffer_fuzzy_find, { desc = 'Live fuzzy search inside of the currently open buffer' })
key.set('n', '<leader>fg', builtin.live_grep,                 { desc = 'Telescope live grep' })
key.set('v', '<leader>fG', builtin.grep_string,               { desc = 'Searches the string under your cursor or selection' })
key.set('n', '<leader>fh', builtin.help_tags,                 { desc = 'Telescope help tags' })
key.set('n', '<leader>fr', builtin.oldfiles,                  { desc = 'Lists previously open files' })

-- More telescope Vim Pickers
key.set('n', '<leader>ta', builtin.autocommands,        { desc = 'Lists vim autocommands and goes to their declaration on <cr>' })
key.set('n', '<leader>tb', builtin.current_buffer_tags, { desc = 'Lists all of the tags for the currently open buffer, with a preview' })
key.set('n', '<leader>tc', builtin.commands,            { desc = 'Lists available plugin/user commands and runs with <cr>' })
key.set('n', '<leader>tC', builtin.command_history,     { desc = 'Lists commands that were executed recently, reruns with <cr>' })
key.set('n', '<leader>tf', builtin.filetypes,           { desc = 'Lists all available filetypes' })
key.set('n', '<leader>th', builtin.search_history,      { desc = 'Lists searches that were executed recently, reruns with <cr>' })
key.set('n', '<leader>tH', builtin.highlights,          { desc = 'Lists all available highlights' })
key.set('n', '<leader>tj', builtin.jumplist,            { desc = 'Lists Jump List entries' })
key.set('n', '<leader>tk', builtin.keymaps,             { desc = 'Lists normal mode keymappings' })
key.set('n', '<leader>tl', builtin.loclist,             { desc = 'Lists items from the current windows location list' })
key.set('n', '<leader>tm', builtin.man_pages,           { desc = 'Lists manpage entries, opens them in a help window on <cr>' })
key.set('n', '<leader>tM', builtin.marks,               { desc = 'Lists vim marks and their value' })
key.set('n', '<leader>tP', builtin.pickers,             { desc = 'Lists the previous pickers incl. multi-selections' })
key.set('n', '<leader>tr', builtin.registers,           { desc = 'Lists vim registers, pastes the contents of the register on <cr>' })
key.set('n', '<leader>tR', builtin.resume,              { desc = 'Lists the results incl. multi-selections of the previous picker' })
key.set('n', '<leader>ts', builtin.colorscheme,         { desc = 'Lists available colorschemes and applies them on <cr>' })
key.set('n', '<leader>tS', builtin.spell_suggest,       { desc = 'Lists spelling suggestions for the current word under the cursor, replaces word with selected suggestion on <cr>' })
key.set('n', '<leader>tt', builtin.tags,                { desc = 'Lists tags in current directory with tag location file preview' })
key.set('n', '<leader>tT', builtin.help_tags,           { desc = 'Lists available help tags and opens a new window with the relevant help info on <cr>' })
key.set('n', '<leader>tv', builtin.vim_options,         { desc = 'Lists vim options, allows you to edit the current value on <cr>' })

-- Codes and LSP
key.set('n', '<leader>lc', builtin.lsp_incoming_calls,    { desc = 'Lists LSP incoming calls for word under the cursor' })
key.set('n', '<leader>lC', builtin.lsp_outgoing_calls,    { desc = 'Lists LSP outgoing calls for word under the cursor' })
key.set('n', '<leader>lD', builtin.diagnostics,           { desc = 'Lists Diagnostics for all open buffers or a specific buffer. Use option bufnr=0 for current buffer.' })
key.set('n', '<leader>ld', builtin.lsp_definitions,       { desc = 'Goto the definition of the word under the cursor, if there only one, otherwise show all options in Telescope' })
key.set('n', '<leader>lf', builtin.quickfix,              { desc = 'Lists items in the quickfix list' })
key.set('n', '<leader>lF', builtin.quickfixhistory,       { desc = 'Lists all quickfix lists in your history and open them with builtin.quickfix or quickfix window' })
key.set('n', '<leader>li', builtin.lsp_implementations,   { desc = 'Goto the implementation of the word under the cursor if there only one, otherwise show all options in Telescope' })
key.set('n', '<leader>lr', builtin.lsp_references,        { desc = 'Lists LSP references for word under the cursor' })
key.set('n', '<leader>ls', builtin.lsp_workspace_symbols, { desc = 'Lists LSP document symbols in the current workspace' })
key.set('n', '<leader>lS', builtin.lsp_document_symbols,  { desc = 'Lists LSP document symbols in the current buffer' })
key.set('n', '<leader>lt', builtin.lsp_type_definitions,  { desc = 'Goto the definition of the type of the word under the cursor, if there only one, otherwise show all options' })
key.set('n', '<leader>lT', builtin.treesitter,            { desc = 'Lists Function names, variables, from Treesitter' })


