-- ------------------------------------------------------------------------------------------------
-- Install/Config file to lualine and nvim-cokeline
-- Author: Valdigleis (valdigleis@gmail.com)
-- Date: 18/09/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    requires = {
      'nvim-tree/nvim=web-devicons',
      opt = true
    },
    config = function()
      require('lualine').setup({
        options = {
           icons_enabled = true,
           theme = 'auto',
           component_separators = { left = '', right = ''},
           section_separators = { left = '', right = ''},
           disabled_filetypes = {
             statusline = {},
             winbar = {},
           },
           ignore_focus = {},
           always_divide_middle = true,
           globalstatus = false,
           refresh = {
             statusline = 1000,
             tabline = 1000,
             winbar = 1000,
           }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      })
    end
  },
  {
    "willothy/nvim-cokeline",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "stevearc/resession.nvim"
    },
    config = function()
      local get_hex = require('cokeline.hlgroups').get_hl_attr
      local mycolor = vim.g.terminal_color_2
      require('cokeline').setup({
        show_if_buffers_are_at_least = 2,
        default_hl = {
          fg = function(buffer)
            return buffer.is_focused and get_hex('Normal', 'fg') or get_hex('Comment', 'fg')
          end,
          bg = function() return get_hex('ColorColumn', 'bg') end,
        },
        sidebar = {
          filetype = {'NvimTree', 'neo-tree'},
          components = {
            {
              text = function(buf)
                return buf.filetype
              end,
              fg = mycolor,
              bg = function() return get_hex('NvimTreeNormal', 'bg') end,
              bold = true,
            },
          }
        },
        components = {
          { text = function(buffer) return (buffer.index ~= 1) and '▏' or '' end, },
          { text = '  ', },
          {
            text = function(buffer)
              return buffer.devicon.icon
            end,
            fg = function(buffer)
              return buffer.devicon.color
            end,
          },
          { text = ' ', },
          {
            text = function(buffer) return buffer.filename .. '  ' end,
            bold = function(buffer)
              return buffer.is_focused
            end,
          },
          {
            text = ' ',
            --text = '󰅚',
            --on_click = function(_, _, _, _, buffer)
            --buffer:delete()
            --end,
          },
          { text = '  ', },
        },
      })
      local keyset = vim.keymap.set
      keyset("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
      keyset("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
     end
  }
}























