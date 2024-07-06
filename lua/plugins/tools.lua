-- ------------------------------------------------------------------------------------------------
-- Install/Config tools plugins
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 01/04/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  },
  --{
  --  'williamboman/mason-lspconfig.nvim',
  --  config = function ()
  --    require("mason-lspconfig").setup({
  --      ensure_installed = { "jdtls" },
  --    })
  --  end
  --},
  {
    'barrett-ruth/live-server.nvim',
    --build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")

      toggleterm.setup({
        direction = "float",
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        }
      })
    end
  }
}
