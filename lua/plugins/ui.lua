-- ------------------------------------------------------------------------------------------------
-- Config file to welcone screen and noice.nvim 
-- File create by Valdigleis (Dk4LL) dk4ll@proton.me
-- Date: 23/04/2024
-- ------------------------------------------------------------------------------------------------
return {
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local alpha = require("alpha")

      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                                             ]],
        [[ ██████╗        ██╗   ██╗ ██                 ]],
        [[ ██╔══██╗       ██║   ██║                    ]],
        [[ ██║  ██║       ██║   ██║ ██╗  █████╗ ██████ ]],
        [[ ██║  ██║ ████  ██║   ██║ ██║ ║██ ██║ ██╔╗██ ]],
        [[ ██║  ██║       ╚██╗ ██╔╝ ██║ ║██ ██║ ██║║██ ]],
        [[ ██████╔╝        ╚████╔╝  ██║ ║██ ╚█████╝║██ ]],
        [[ ╚═════╝          ╚═══╝   ╚═╝ ╚═╝        ╚═╝ ]],
        [[                                             ]],
        [[      A personal NeoVim setup by Dk4LL       ]],
        [[                                             ]],
      }

      dashboard.section.buttons.val = {
        dashboard.button( "e", "  > New file"  , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "f", "󰈞  > Find file" , ":Telescope find_files<CR>"),
        dashboard.button( "r", "󱦟  > Recent"    , ":Telescope oldfiles<CR>"),
        dashboard.button( "p", "  > Plugins"   , "<Cmd>Lazy<CR>"),
        dashboard.button( "q", "󰅗  > Quit D-Vim", ":qa<CR>"),
      }
      alpha.setup(dashboard.opts)
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = true,
        inc_rename = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function(_, opts)
      if vim.o.filetype == "lazy" then
        vim.cmd([[messages clear]])
      end
      require("noice").setup(opts)
    end
  },
}
