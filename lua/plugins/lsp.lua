-- ------------------------------------------------------------------------------------------------
-- Install/Config file to lsp-config
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 28/03/2024
-- ------------------------------------------------------------------------------------------------
return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lspconfig = require("lspconfig")

    -- Astro
    lspconfig.astro.setup({
      capabilities = capabilities,
    })

    -- C/C++
    lspconfig.clangd.setup({
      capabilities = capabilities,
    })

    -- CSS
    lspconfig.cssls.setup({
      capabilities = capabilities,
    })

    -- Haskell
    lspconfig.hls.setup({
      capabilities = capabilities,
    })

    -- HTML
    lspconfig.html.setup({
      capabilities = capabilities,
    })

    -- Java
    lspconfig.jdtls.setup({
      capabilities = capabilities,
    })

    -- Lua
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })

    -- Ocaml
    lspconfig.ocamllsp.setup({
      capabilities = capabilities,
    })

    lspconfig.phpactor.setup({
      capabilities = capabilities,
    })

    -- Prolog
    lspconfig.prolog_lsp.setup({
      capabilities = capabilities,
    })

    -- Python
    lspconfig.pyright.setup({})

    -- Rust
    lspconfig.rust_analyzer.setup({})

    -- LaTeX
    lspconfig.texlab.setup({
      capabilities = capabilities,
    })

    -- Tailwindcss
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })

    -- Type(java)script
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })
  end
}
