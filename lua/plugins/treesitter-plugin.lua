-- ------------------------------------------------------------------------------------------------
-- -- Install/Config file to tree-sitter
-- -- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- -- Date: 21/10/2024
-- -- ------------------------------------------------------------------------------------------------

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "bash", "c", "css", "haskell", "java", "javascript", "json", "latex", "lua", "ocaml", "python", "vim", "vimdoc" },
      --sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
