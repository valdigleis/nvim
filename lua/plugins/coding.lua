-- ------------------------------------------------------------------------------------------------
-- Install/Config file plugins to help you write code
-- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- Date: 21/10/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'danymat/neogen',
    opts = {
      snippet_engine = "luasnip"
    },
  },
  {
    'dinhhuy258/git.nvim',
    event = "BufReadPre",
    config = true,
  }
}
