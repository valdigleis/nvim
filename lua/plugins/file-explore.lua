-- ------------------------------------------------------------------------------------------------
-- Install/Config file to nvim-neo-tree
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 16/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()

    local keyset = vim.keymap.set

    -- Open filesystem
    keyset('n', '<leader>ef', ':Neotree filesystem reveal left<CR>', {})
    -- Open filesystem with git statys
    keyset('n', '<leader>eg', ':Neotree filesystem git_status reveal left<CR>', {})

  end
}
