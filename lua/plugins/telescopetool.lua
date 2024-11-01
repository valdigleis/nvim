-- ------------------------------------------------------------------------------------------------
-- Install/Config file to telescope plugin
-- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- Date: 21/10/2024
-- ------------------------------------------------------------------------------------------------

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'luc-tielen/telescope_hoogle'
  },
  config = function()
    require('telescope').load_extension('hoogle')
  end
}
