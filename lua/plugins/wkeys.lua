-- ------------------------------------------------------------------------------------------------
-- Install/Config file to which-key plugins
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 24/06/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({
        modes = {
          n = true,   -- Normal mode
          i = true,   -- Insert mode
          x = false,  -- Visual mode
          s = false,  -- Select mode
          o = false,  -- Operator pending mode
          t = false,  -- Terminal mode
          c = false,  -- Command mode
        },
        icons = {
          breadcrumb = "»",
          separator = "➜",
          group = "",
          ellipsis = "…",
          rules = false
        }
      })
      wk.add({

        { "<C-a>", "gg<S-v>G",   desc = "Select all text", mode = "n" },
        { "<leader>", desc = "Commands" },
        { "<",        desc = "Indent left" },
        { ">",        desc = "Indent right" },


        { "<leader>g", group = "Go & Edit Commands" },
        { "<leader>gg", "gg", desc = "Jump to first line",      mode = "n" },
        { "<leader>gG", "G",  desc = "Jump to last line",       mode = "n" },

        { "<leader>gt", "t", desc = "Go to next tab page",      mode = "n" },
        { "<leader>gT", "T", desc = "Go to previous tab page",  mode = "n" },
        { "<leader>gu", "u", desc = "Lowercase",                mode = "n" },
        { "<leader>gU", "U", desc = "Uppercase",                mode = "n" },

        { "K",  desc = "Show Doc" },
        { "KK", desc = "Switch to Doc popup" },
        { "rn", desc = "Symbol" },

        { "z", group = "Folds" },

        { "[", desc = "back navegation" },
        { "]", desc = "Front navegation" },

        { "+", "<C-a>", desc = "Increase value in 1",  mode = "n" },
        { "-", "<C-x>", desc = "Decrease value in 1",  mode = "n" },

        { "<leader>b", group = "Buffers Commands" },
        { "<leader>bd", ":bd<CR>", desc = "Delete current buffer", mode = "n" },
        { "<leader>bn", ":tabedit<CR>", desc = "New Buffer unamed", mode = "n" },

        { "<leader>c", group = "Code Commands" },
        { "<leader>ca", desc = "Code actions" },
        { "<leader>cf", desc = "Code format" },
        { "<leader>ci", desc = "Code implementation" },
        { "<leader>cr", desc = "Code references" },

        { "<leader>e", group = "Explore Commands"},
        { "<leader>ef", desc = "Open Explore File" },
        { "<leader>eg", desc = "Open Explore File with git" },

        { "<leader>G", group = "Git Commands" },
        { "<leader>Gb", desc = "Git blame" },
        { "<leader>Gp", desc = "Gitsigns preview hunk" },
        { "<leader>Gt", desc = "Gitsigns toggle current line blame" },

        { "<leader>l", group = "LSP Commands" },
        { "<leader>lC", desc = "Outgoing calls" },
        { "<leader>lD", desc = "Definitions" },
        { "<leader>lS", desc = "Dynamic workspace symbols" },
        { "<leader>lc", desc = "Incoming calls" },
        { "<leader>ld", desc = "Diagnostics" },
        { "<leader>li", desc = "Implementations" },
        { "<leader>lk", desc = "Document symbols" },
        { "<leader>lr", desc = "Reference" },
        { "<leader>ls", desc = "Workspace symbols" },
        { "<leader>lt", desc = "Types definitions" },

        { "<leader>w", group = "Windows Commands" },
        { "<leader>wD", "<C-w>+", desc = "Botton resize",                     mode = "n" },
        { "<leader>wL", "<C-w><", desc = "Left resize",                       mode = "n" },
        { "<leader>wR", "<C-w>>", desc = "Right resize",                      mode = "n" },
        { "<leader>wU", "<C-w>+", desc = "Top resize",                        mode = "n" },
        { "<leader>wd", "<C-w>j", desc = "Move to down",                      mode = "n" },
        { "<leader>ws", "<C-w>s", desc = "Split horizontal",                  mode = "n" },
        { "<leader>wl", "<C-w>h", desc = "Move to left",                      mode = "n" },
        { "<leader>wr", "<C-w>l", desc = "Move to right",                     mode = "n" },
        { "<leader>wu", "<C-w>k", desc = "Move to up",                        mode = "n" },
        { "<leader>wv", "<C-w>v", desc = "Split vertical",                    mode = "n" },
        { "<leader>ww", "<C-w>w", desc = "Switch windows",                    mode = "n" },
        { "<leader>wD", "<C-w>d", desc = "Show diagnostics under the cursor", mode = "n" },
        { "<leader>wx", "<C-w>o", desc = "Close all other windows",           mode = "n" },
        { "<leader>wq", "<C-w>q", desc = "Quit a window",                     mode = "n" },
        { "<leader>wt", "<C-w>T", desc = "Break out into a new tab",          mode = "n" },
        { "<leader>wS", "<C-w>x", desc = "Swap current with next",            mode = "n" },
        { "<leader>wm", "<C-w>_", desc = "Max out the height",                mode = "n" },
        { "<leader>wm", "<C-w>|", desc = "Max out the width",                 mode = "n" },


        { "<leader>t", group = "Telescope Commands" },
        { "<leader>tB", desc = "Buffer fuzzy find" },
        { "<leader>tC", desc = "Command history" },
        { "<leader>tF", desc = "Files type list" },
        { "<leader>tG", desc = "Git files" },
        { "<leader>tH", desc = "Highlights list" },
        { "<leader>tL", desc = "Keymaps list" },
        { "<leader>tM", desc = "Show marks" },
        { "<leader>tQ", desc = "Quick fix history" },
        { "<leader>tR", desc = "Speel suggest" },
        { "<leader>tS", desc = "Search history" },
        { "<leader>tT", desc = "Tag list current buffer" },
        { "<leader>tU", desc = "Multi selections picker" },
        { "<leader>tV", desc = "Vim options list" },
        { "<leader>ta", desc = "Autocommands" },
        { "<leader>tb", desc = "Buffers list" },
        { "<leader>tc", desc = "Command list" },
        { "<leader>tf", desc = "Find files" },
        { "<leader>tg", desc = "Live grep" },
        { "<leader>th", desc = "Tag helps" },
        { "<leader>tj", desc = "Jumps list" },
        { "<leader>tl", desc = "Itens list" },
        { "<leader>tm", desc = "Manual pages" },
        { "<leader>to", desc = "Recent open files" },
        { "<leader>tq", desc = "Quick fix" },
        { "<leader>tr", desc = "Vim registers" },
        { "<leader>ts", desc = "Grep string" },
        { "<leader>tt", desc = "Tag list" },
        { "<leader>tu", desc = "Multi selections previous picker" },
        { "<leader>tv", desc = "Show color schemes" },

        { "<leader>T",  group = "Tools Commands" },
        { "<leader>TT", ":ToggleTerm<CR>",      desc = "Open Terminal",     mode = "n" },
        { "<leader>Tl", ":LiveServerStart<CR>", desc = "Start Live Server", mode = "n" },
        { "<leader>TL", ":LiveServerStop<CR>",  desc = "Stop Live server",  mode = "n" },


        { "<leader>W", group = "Workspace Commands" },
        { "<leader>Wa", desc = "Add to workspace" },
        { "<leader>Wl", desc = "List workspace" },
        { "<leader>Wr", desc = "Remove of the workspace" },

      })
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  }
}
