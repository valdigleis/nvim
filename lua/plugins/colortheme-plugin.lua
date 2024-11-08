-- ------------------------------------------------------------------------------------------------
-- -- Install/Config kanagawa (color scheme) plugin
-- -- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- -- Date: 18/09/2024
-- -- ------------------------------------------------------------------------------------------------

return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  name = "kanagawa",
  priority = 1000,
  config = function()
    -- {wave, dragon, lotus}
    require("kanagawa").load("wave")
  end
}
