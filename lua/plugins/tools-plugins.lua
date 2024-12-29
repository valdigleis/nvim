-- ------------------------------------------------------------------------------------------------
-- Install/Config file plugins to tools auxiliar of the Neovim
-- Author: Valdigleis (valdigleis@gmail.com)
-- Date: 21/10/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  {
    'barrett-ruth/live-server.nvim',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  }
}
