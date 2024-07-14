-- ------------------------------------------------------------------------------------------------
-- Install/Config file to Telescope and Friends plugin
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 14/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')

      local keyset = vim.keymap.set

      -- Lists files in your current working directory, respects .gitignore
      keyset('n', '<leader>tf', builtin.find_files, {})
      -- Fuzzy search through the output of git ls-files command, respects .gitignore
      keyset('n', '<leader>tG', builtin.git_files, {})
      -- Searches for the string under your cursor or selection in your current working directory
      keyset('n', '<leader>ts', builtin.grep_string, {})
      -- Search for a string in your current working directory and get results live as you type, respects .gitignore. (Requires ripgrep)
      keyset('n', '<leader>tg', builtin.live_grep, {})
      -- Lists open buffers in current neovim instance
      keyset('n', '<leader>tb', builtin.buffers, {})
      -- Lists previously open files
      keyset('n', '<leader>to', builtin.oldfiles, {})
      -- Lists available plugin/user commands and runs them on <cr>
      keyset('n', '<leader>tc', builtin.commands, {})
      -- Lists tags in current directory with tag location file preview (users are required to run ctags -R to generate tags or update when introducing new changes)
      keyset('n', '<leader>tt', builtin.tags, {})
      -- Lists commands that were executed recently, and reruns them on <cr>
      keyset('n', '<leader>tC', builtin.command_history, {})
      -- Lists searches that were executed recently, and reruns them on <cr>
      keyset('n', '<leader>tS', builtin.search_history, {})
      -- Lists available help tags and opens a new window with the relevant help info on <cr>
      keyset('n', '<leader>th', builtin.help_tags, {})
      -- Lists manpage entries, opens them in a help window on <cr>
      keyset('n', '<leader>tm', builtin.man_pages, {})
      -- Lists vim marks and their value
      keyset('n', '<leader>tM', builtin.marks, {})
      -- Lists available colorschemes and applies them on <cr>
      keyset('n', '<leader>tv', builtin.colorscheme, {})
      -- Lists items in the quickfix list
      keyset('n', '<leader>tq', builtin.quickfix, {})
      -- Lists all quickfix lists in your history and open them with builtin.quickfix or quickfix window
      keyset('n', '<leader>tQ', builtin.quickfixhistory, {})
      -- Lists items from the current window's location list
      keyset('n', '<leader>tl', builtin.loclist, {})
      -- Lists Jump List entries
      keyset('n', '<leader>tj', builtin.jumplist, {})
      -- Lists vim options, allows you to edit the current value on <cr>
      keyset('n', '<leader>tV', builtin.vim_options, {})
      -- Lists vim registers, pastes the contents of the register on <cr>
      keyset('n', '<leader>tr', builtin.registers, {})
      -- Lists vim autocommands and goes to their declaration on <cr>
      keyset('n', '<leader>ta', builtin.autocommands, {})
      -- Lists spelling suggestions for the current word under the cursor, replaces word with selected suggestion on <cr>
      keyset('n', '<leader>tR', builtin.spell_suggest, {})
      -- Lists normal mode keymappings
      keyset('n', '<leader>tL', builtin.keymaps, {})
      -- Lists all available filetypes
      keyset('n', '<leader>tF', builtin.filetypes, {})
      -- Lists all available highlights
      keyset('n', '<leader>tH', builtin.highlights, {})
      -- Live fuzzy search inside of the currently open buffer
      keyset('n', '<leader>tB', builtin.current_buffer_fuzzy_find, {})
      -- Lists all of the tags for the currently open buffer, with a preview
      keyset('n', '<leader>tT', builtin.current_buffer_tags, {})
      -- Lists the results incl. multi-selections of the previous picker
      keyset('n', '<leader>tu', builtin.resume, {})
      -- Lists the previous pickers incl. multi-selections (see :h telescope.defaults.cache_picker)
      keyset('n', '<leader>tU', builtin.pickers, {})

      vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
    end
  }
}
