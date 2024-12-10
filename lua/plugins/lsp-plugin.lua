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
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require('cmp')
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body)
            require("luasnip").lsp_expand(args.body)
          end
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
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
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      -- ------------------------------------------------------------------------------------------
      -- Config to LSP useds here
      -- ------------------------------------------------------------------------------------------
      -- Bash
      lspconfig.bashls.setup({
        cmd = { 'bash-language-server', 'start' },
        settings = {
          bashIde = {
            globPattern = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
          },
        },
        filetypes = { 'sh' },
        root_dir = lspconfig.util.find_git_ancestor,
        single_file_support = true,
      })
      -- CSS
      lspconfig.cssls.setup({ capabilities = capabilities, })
      -- C/C++ (Clangd)
      lspconfig.clangd.setup({ capabilities = capabilities, })
      -- Haskell
      lspconfig.hls.setup({
        cmd = { 'haskell-language-server-wrapper', '--lsp' },
        filetypes = { 'haskell', 'lhaskell', 'hs' },
        root_dir = lspconfig.util.root_pattern('hie.yaml', 'stack.yaml', 'cabal.project', '*.cabal', 'package.yaml'),
        single_file_support = true,
        settings = {
          haskell = {
            formattingProvider = 'ormolu',
            cabalFormattingProvider = 'cabalfmt',
          }
        }
      })
      -- HTML
      lspconfig.html.setup({ capabilities = capabilities, })
      -- Java
      lspconfig.jdtls.setup({ capabilities = capabilities })
      -- Lean
      lspconfig.leanls.setup({ capabilities = capabilities, })
      -- Lua
      lspconfig.lua_ls.setup({
        cmd = { 'lua-language-server', '--locale=pt-br' },
        filetypes = { 'lua' },
      })
      -- OCaml
      lspconfig.ocamllsp.setup({
        cmd = { 'ocamllsp' },
        filetypes = { 'ocaml', 'menhir', 'ocamlinterface', 'ocamllex', 'reason', 'dune' },
        root_dir = lspconfig.util.root_pattern('*.opam', 'esy.json', 'package.json', '.git', 'dune-project', 'dune-workspace'),
        single_file_support = true,
        settings = {
          ocaml = {
            formattingProvider = 'ocamlformat'
          }
        }
      })
      -- PHP
      --lspconfig.intelephense.setup({
      --  cmd = { 'intelephense', '--stdio' },
      --  filetypes = { 'php' },
      --})
      lspconfig.phpactor.setup({
        cmd = { 'phpactor', 'language-server', '-vvv' },
        root_dir = function(startPath)
          print("root_dir running");
          local rp = lspconfig.util.root_pattern
          for _, pattern in pairs({".thisIsDocRoot", "index.php", ".git", "node_modules", "index.php", "composer.json"})
          do
            local found = rp({pattern})(startPath)
            print(pattern, found)
            if (found and found ~= '') then return found end
          end
          return nil
        end
      })
      -- Prolog
      lspconfig.prolog_ls.setup({
        cmd = { 'swipl', '-g', 'use_module(library(lsp_server)).', '-g', 'lsp_server:main', '-t', 'halt', '--', 'stdio', },
        filetypes = { 'prolog', 'pl' },
        --root_dir = lspconfig.util.root_pattern 'pack.pl',
        single_file_support = true,
      })
      -- Python
      lspconfig.pyright.setup({ capabilities = capabilities })
      -- (La)Tex
      lspconfig.texlab.setup({ capabilities = capabilities })
      -- Type(Java)script
      lspconfig.ts_ls.setup({ capabilities = capabilities })
    end
  }
}
