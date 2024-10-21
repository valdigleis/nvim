-- ------------------------------------------------------------------------------------------------
-- -- Install/Config plugins to language server  protocol and autocomplete
-- -- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- -- Date: 18/09/2024
-- -- ----------------------------------------------------------------------------------------------

return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      -- ------------------------------------------------------------------------------------------
      -- Config to LSP useds here
      -- ------------------------------------------------------------------------------------------
      -- C/C++ (Clangd)
      lspconfig.clangd.setup({ capabilities = capabilities, })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require('cmp')
      -- require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body)
            -- require("luasnip").lsp_expand(args.body)
          end
        },
        window = {
          --completion = cmp.config.window.bordered(),
          --documentation = cmp.config.window.bordered(),
        },

        cmp.setup.filetype('gitcommit', {
          sources = cmp.config.sources({
            { name = 'git' },
          }, {
              { name = 'buffer' },
            })
        }),

        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          --{ name = "vsnip" },
          { name = "luasnip" }
        })

      })
    end
  },
  --{
  --  "L3MON4D3/LuaSnip",
  --  dependencies = {
  --    "saadparwaiz1/cmp_luasnip",
  --    "rafamadriz/friendly-snippets"
  --  },
  --}
}
