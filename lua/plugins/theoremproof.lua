-- ------------------------------------------------------------------------------------------------
-- Install/Config file to lean prover plugin
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 09/05/2024
-- ------------------------------------------------------------------------------------------------

return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
  },
  opts = {
    lsp = {
      on_attach = on_attach,
    },
    mappings = true,
  }
}
