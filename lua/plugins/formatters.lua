-- ------------------------------------------------------------------------------------------------
-- 
--
-- ------------------------------------------------------------------------------------------------

return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    local cform = require('conform')
    cform.setup({
      formatters_by_ft = {
        -- Javascript
        javascript = { { "prettierd", "prettier" } },
        -- Typescript
        typescript = { { "prettierd", "prettier" } },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end
}
