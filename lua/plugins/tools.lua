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
  },
  --{
  --  'echasnovski/mini.icons',
  --  opts = {},
  --  lazy = true,
  --  specs = {
  --    { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
  --  },
  --  init = function()
  --    package.preload["nvim-web-devicons"] = function()
  --      require("mini.icons").mock_nvim_web_devicons()
  --      return package.loaded["nvim-web-devicons"]
  --    end
  --  end,
  --},
}
