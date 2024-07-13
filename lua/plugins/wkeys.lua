-- ------------------------------------------------------------------------------------------------
-- Install/Config file to which-key plugins
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 24/06/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")
      wk.setup({
        icons = { rules = false  }
      })
      wk.add({
        { "<C-a>", desc = "Select all" },
        { "<leader>", desc = "Dev tools" },

        { "<leader>L", group = "Live server"},
        { "<leader>LD", desc = "Live server stop" },
        { "<leader>LL", desc = "Live server start" },

        { "<leader>b", group = "Buffers" },
        { "<leader>bd", desc = "Delete current buffer" },
        { "<leader>bn", desc = "New Buffer" },

        { "<leader>c", group = "Code" },
        { "<leader>ca", desc = "Code actions" },
        { "<leader>cf", desc = "Code format" },
        { "<leader>ci", desc = "Code implementation" },
        { "<leader>cr", desc = "Code references" },

        { "<leader>e", group = "Explore"},
        { "<leader>ef", desc = "Open Explore File" },
        { "<leader>eg", desc = "Open Explore File with git" },

        { "<leader>g", group = "Git" },
        { "<leader>gb", desc = "Git blame" },
        { "<leader>gp", desc = "Gitsigns preview hunk" },
        { "<leader>gt", desc = "Gitsigns toggle current line blame" },

        { "<leader>l", group = "LSP" },
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

        { "<leader>s", group = "Splits & Moves" },
        { "<leader>sD", desc = "Botton resize" },
        { "<leader>sL", desc = "Left resize" },
        { "<leader>sR", desc = "Right resize" },
        { "<leader>sU", desc = "Top resize" },
        { "<leader>sd", desc = "Move to down" },
        { "<leader>sh", desc = "Split horizontal" },
        { "<leader>sl", desc = "Move to left" },
        { "<leader>sr", desc = "Move to right" },
        { "<leader>su", desc = "Move to up" },
        { "<leader>sv", desc = "Split vertical" },

        { "<leader>t", group = "Telescope" },
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

        { "<leader>w", group = "Workspace" },
        { "<leader>wa", desc = "Add to workspace" },
        { "<leader>wl", desc = "List workspace" },
        { "<leader>wr", desc = "Remove of the workspace" },

        { "K", desc = "Show Doc" },
        { "KK", desc = "Switch to Doc popup" },
        { "[", desc = "back navegation" },
        { "]", desc = "Front navegation" },

        { "r", group = "Rename" },
        { "rn", desc = "Symbol" },

        { "z", group = "Folds" },
      })
    end,
  }
}
