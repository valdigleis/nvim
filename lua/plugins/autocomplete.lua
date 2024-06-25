-- ------------------------------------------------------------------------------------------------
-- Install/Config file to autocomplete and snipers plugins
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 29/03/2024
-- ------------------------------------------------------------------------------------------------
return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require('cmp')
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
        --    vim.fn["vsnip#anonymous"](args.body)
            require("luasnip").lsp_expand(args.body)
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

        --cmp.setup.cmdline({ '/', '?' }, {
        --  mapping = cmp.mapping.preset.cmdline(),
        --  sources = {
        --    { name = 'buffer' }
        --  }
        --}),

        --cmp.setup.cmdline(':', {
        --  mapping = cmp.mapping.preset.cmdline(),
        --  sources = cmp.config.sources({
        --    { name = 'path' }
        --  },{
        --      { name = 'cmdline' }
        --  }),
        --  matching = { disallow_symbol_nonprefix_matching = false }
        --}),


        --local capabilities = require('cmp_nvim_lsp').default_capabilities()
        --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
        --  capabilities = capabilities
        --}

      })
    end
  }
}
