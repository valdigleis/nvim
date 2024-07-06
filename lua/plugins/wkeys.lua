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
      wk.register({
        ["<leader>"] = {
          name = "Dev tools",
          L    = { name = "Live server" },
          LD   = { name = "Live server stop" },
          LL   = { name = "Live server start" },
          c    = { name = "Code" },
          ca   = { name = "Code actions" },
          cf   = { name = "Code format" },
          ci   = { name = "Code implementation" },
          cr   = { name = "Code references" },
          e    = { name = "NeoTree" },
          ef   = { name = "Explore file" },
          eg   = { name = "Explore with git file" },
          g    = { name = "Gits" },
          gb   = { name = "Git blame" },
          gp   = { name = "Gitsigns preview hunk" },
          gt   = { name = "Gitsigns toggle current line blame" },
          t    = { name = "Telescope" },
          tf   = { name = "Find files" },
          tG   = { name = "Git files" },
          ts   = { name = "Grep string" },
          tg   = { name = "Live grep" },
          tb   = { name = "Buffers list" },
          to   = { name = "Recent open files" },
          tc   = { name = "Command list" },
          tt   = { name = "Tag list" },
          tC   = { name = "Command history" },
          tS   = { name = "Search history" },
          th   = { name = "Tag helps" },
          tm   = { name = "Manual pages" },
          tM   = { name = "Show marks" },
          tv   = { name = "Show color schemes" },
          tq   = { name = "Quick fix" },
          tQ   = { name = "Quick fix history" },
          tl   = { name = "Itens list" },
          tj   = { name = "Jumps list" },
          tV   = { name = "Vim options list" },
          tr   = { name = "Vim registers" },
          ta   = { name = "Autocommands" },
          tR   = { name = "Speel suggest" },
          tL   = { name = "Keymaps list" },
          tF   = { name = "Files type list" },
          tH   = { name = "Highlights list" },
          tB   = { name = "Buffer fuzzy find" },
          tT   = { name = "Tag list current buffer" },
          tu   = { name = "Multi selections previous picker" },
          tU   = { name = "Multi selections picker" },
          l    = { name = "LSP" },
          lr   = { name = "Reference" },
          lc   = { name = "Incoming calls" },
          lC   = { name = "Outgoing calls" },
          lk   = { name = "Document symbols" },
          ls   = { name = "Workspace symbols" },
          lS   = { name = "Dynamic workspace symbols" },
          ld   = { name = "Diagnostics" },
          li   = { name = "Implementations" },
          lD   = { name = "Definitions" },
          lt   = { name = "Types definitions" },
          s    = { name = "Splits & Moves" },
          sh   = { name = "Split horizontal" },
          sv   = { name = "Split vertical" },
          sl   = { name = "Move to left" },
          sr   = { name = "Move to right" },
          su   = { name = "Move to up" },
          sd   = { name = "Move to down" },
          sU   = { name = "Top resize" },
          sD   = { name = "Botton resize" },
          sL   = { name = "Left resize" },
          sR   = { name = "Right resize" },
          w    = { name = "Workspace" },
          wa   = { name = "Add to workspace" },
          wl   = { name = "List workspace" },
          wr   = { name = "Remove of the workspace" },
          b    = { name = "Buffers" },
          bd   = { name = "Delete current buffer" },
          bn   = { name = "New Buffer" }
        },
        ["z"] = { name = "Folds" },
        ["K"] = {
          name = "Show Doc",
          K    = { "Switch to Doc popup" },
        }
      })
    end,
  }
}
