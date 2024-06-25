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

    -- Define keymaps to lsp
    local keymap = vim.keymap.set

    keymap('n', 'K', vim.lsp.buf.hover, {})
    keymap('n', 'gD', vim.lsp.buf.declaration, {})
    keymap('n', 'gd', vim.lsp.buf.definition, {})
    keymap('n', 'tD', vim.lsp.buf.type_definition, {})
    keymap('n', 'rn', vim.lsp.buf.rename, {})

    keymap('n', '<leader>cf', vim.lsp.buf.format, {})
    keymap('n', '<leader>cr', vim.lsp.buf.references, {})
    keymap('n', '<leader>ci', vim.lsp.buf.implementation, {})
    keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})

    keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
    keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
    keymap('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, {})

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
