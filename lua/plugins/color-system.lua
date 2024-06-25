-- ------------------------------------------------------------------------------------------------
-- Install/Config file to color scheme
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa",
    priority = 1000,
    config = function()
      -- {wave, dragon, lotus}
      require("kanagawa").load("wave")
    end
  }
}


