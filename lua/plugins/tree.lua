-- ------------------------------------------------------------------------------------------------
-- Install/Config to tree-sitter
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 15/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", 
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "astro", "c", "css", "haskell", "html", "java", "javascript", "latex", "lua", "ocaml", "python", "rust", "typescript", "vim", "vimdoc" },
      --sync_install = false, 
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
