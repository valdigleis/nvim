-- ------------------------------------------------------------------------------------------------
-- Config/install file to which-key
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 24/06/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "folke/which-key.nvim",
    dependencies = {
      "echasnovski/mini.icons",
    },
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      local built = require('telescope.builtin')
      wk.setup({
        --modes = {
        --  n = true,   -- Normal mode
        --  i = true,   -- Insert mode
        --  x = false,  -- Visual mode
        --  s = false,  -- Select mode
        --  o = false,  -- Operator pending mode
        --  t = false,  -- Terminal mode
        --  c = false,  -- Command mode
        --},
        triggers = {
          { "<leader>", mode = { "n", "v" } },
        },
        icons = {
          breadcrumb = "»",
          separator = "➜",
          group = "",
          ellipsis = "…",
          rules = false
        },
      })
      wk.add({


        { "<leader>", desc = "Commands" },

        -- ---------------------------------------------------------------------------
        -- Tips
        -- ---------------------------------------------------------------------------
        { "K", desc = "Show documentation pop-up", mode = "n" },
        { "<C-a>", "gg<S-v>G",   desc = "Select all text", mode = "n" },
        { "+", "<C-a>", desc = "Increase value in 1",  mode = "n" },
        { "-", "<C-x>", desc = "Decrease value in 1",  mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Buffers Commands
        -- ---------------------------------------------------------------------------
        { "<leader>b", group = "Buffers Commands" },
        { "<leader>bd", ":bd<CR>",      desc = "Delete current buffer", mode = "n" },
        { "<leader>bn", ":tabedit<CR>", desc = "New Buffer unamed",     mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Explore Commands
        -- ---------------------------------------------------------------------------
        { "<leader>e", group = "Explore Commands"},
        { "<leader>ef", ":Neotree filesystem reveal left<CR>",            desc = "Open Explore File",           mode = "n" },
        { "<leader>eg", ":Neotree filesystem git_status reveal left<CR>", desc = "Open Explore File with git",  mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Git Commands
        -- ---------------------------------------------------------------------------
        { "<leader>G", group = "Git Commands" },
        { "<leader>Gb", desc = "Git blame" },
        { "<leader>Gp", desc = "Gitsigns preview hunk" },
        { "<leader>Gt", desc = "Gitsigns toggle current line blame" },

        -- ---------------------------------------------------------------------------
        -- LSP Commands
        -- ---------------------------------------------------------------------------
        { "<leader>l", group = "LSP Commands" },
        { "<leader>la", vim.lsp.buf.code_action,              desc = "Code actions",                        mode = "n" },
        { "<leader>lA", built.lsp_references,                 desc = "Show References list",                mode = "n" },
        { "<leader>lb", built.diagnostics,                    desc = "Show Diagnostics in open buffers",    mode = "n" },
        { "<leader>lB", built.lsp_definitions,                desc = "Go to Definition or show infos",      mode = "n" },
        { "<leader>lc", built.lsp_incoming_calls,             desc = "Show incoming calls list",            mode = "n" },
        { "<leader>lC", built.lsp_outgoing_calls,             desc = "Show outgoing calls list",            mode = "n" },
        { "<leader>ld", vim.lsp.buf.definition,               desc = "Jump to definition",                  mode = "n" },
        { "<leader>lD", vim.lsp.buf.declaration,              desc = "Jump to declaration",                 mode = "n" },
        { "<leader>lf", vim.lsp.buf.format,                   desc = "Code format",                         mode = "n" },
        --{ "<leader>lh", vim.lsp.buf.hover,                    desc = "Open pop-up documentation",           mode = "n" },
        { "<leader>li", vim.lsp.buf.implementation,           desc = "Jump to implementation",              mode = "n" },
        { "<leader>lI", built.lsp_implementations,            desc = "Go to Implementation or show infos",  mode = "n" },
        { "<leader>lr", vim.lsp.buf.references,               desc = "Code references",                     mode = "n" },
        { "<leader>lR", vim.lsp.buf.rename,                   desc = "Rename symbol",                       mode = "n" },
        { "<leader>ls", built.lsp_document_symbols,           desc = "Show symbols on current buffer",      mode = "n" },
        { "<leader>lS", built.lsp_workspace_symbols,          desc = "Show symbols on current workspace",   mode = "n" },
        { "<leader>lt", vim.lsp.buf.type_definition,          desc = "Jump to type definition",             mode = "n" },
        { "<leader>lT", built.lsp_type_definitions,           desc = "Go to Type Definition or Show infos", mode = "n" },
        { "<leader>lw", built.lsp_dynamic_workspace_symbols,  desc = "Show symbols on all workspace",       mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Windows Commands
        -- ---------------------------------------------------------------------------
        --{ "<leader>w", group = "Windows Commands" },
        --{ "<leader>wD", "<C-w>+", desc = "Botton resize",                     mode = "n" },
        --{ "<leader>wL", "<C-w><", desc = "Left resize",                       mode = "n" },
        --{ "<leader>wR", "<C-w>>", desc = "Right resize",                      mode = "n" },
        --{ "<leader>wU", "<C-w>+", desc = "Top resize",                        mode = "n" },
        --{ "<leader>wd", "<C-w>j", desc = "Move to down",                      mode = "n" },
        --{ "<leader>ws", "<C-w>s", desc = "Split horizontal",                  mode = "n" },
        --{ "<leader>wl", "<C-w>h", desc = "Move to left",                      mode = "n" },
        --{ "<leader>wr", "<C-w>l", desc = "Move to right",                     mode = "n" },
        --{ "<leader>wu", "<C-w>k", desc = "Move to up",                        mode = "n" },
        --{ "<leader>wv", "<C-w>v", desc = "Split vertical",                    mode = "n" },
        --{ "<leader>ww", "<C-w>w", desc = "Switch windows",                    mode = "n" },
        --{ "<leader>wD", "<C-w>d", desc = "Show diagnostics under the cursor", mode = "n" },
        --{ "<leader>wx", "<C-w>o", desc = "Close all other windows",           mode = "n" },
        --{ "<leader>wq", "<C-w>q", desc = "Quit a window",                     mode = "n" },
        --{ "<leader>wt", "<C-w>T", desc = "Break out into a new tab",          mode = "n" },
        --{ "<leader>wS", "<C-w>x", desc = "Swap current with next",            mode = "n" },
        --{ "<leader>wm", "<C-w>_", desc = "Max out the height",                mode = "n" },
        --{ "<leader>wm", "<C-w>|", desc = "Max out the width",                 mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Telescope Commands
        -- ---------------------------------------------------------------------------
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

        -- ---------------------------------------------------------------------------
        -- Tools Commands
        -- ---------------------------------------------------------------------------
        { "<leader>T",  group = "Tools Commands" },
        { "<leader>Tt", ":ToggleTerm<CR>",      desc = "Open Terminal",   mode = "n" },
        { "<leader>To", ":BrowserOpen<CR>",     desc = "Open Web Server", mode = "n" },

        --{ "<leader>Ts", ":LiveServerStart<CR>", desc = "Start Live Server", mode = "n" },
        --{ "<leader>Tk", ":LiveServerStop<CR>",  desc = "Kill Live server",  mode = "n" },

        -- ---------------------------------------------------------------------------
        -- Workspace Commands
        -- ---------------------------------------------------------------------------
        { "<leader>W", group = "Workspace Commands" },
        { '<leader>Wa', vim.lsp.buf.add_workspace_folder,     desc = "Add to workspace",        mode = "n" },
        { '<leader>Wr', vim.lsp.buf.remove_workspace_folder,  desc = "Remove of the workspace", mode = "n" },
        { "<leader>Wl", function()
                          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                        end,
          desc = "List workspace", mode = "n"
        },

      })
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  }
}
