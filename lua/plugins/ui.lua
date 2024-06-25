-- ------------------------------------------------------------------------------------------------
-- Config file to welcone screen
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 23/04/2024
-- ------------------------------------------------------------------------------------------------
return {
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
}
