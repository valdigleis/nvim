-- ------------------------------------------------------------------------------------------------
-- Install/Config file to ui plugins
-- Author: Valdigleis (valdigleis@gmail.com)
-- Date: 12/10/2025
-- ------------------------------------------------------------------------------------------------

return {
  {
    "echasnovski/mini.indentscope",
    version = false,
    --event = "LazyFile",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
         pattern = {
          "Trouble",
          "alpha",
          "dashboard",
          "fzf",
          "help",
          "lazy",
          "mason",
          "neo-tree",
          "notify",
          "snacks_dashboard",
          "snacks_notif",
          "snacks_terminal",
          "snacks_win",
          "toggleterm",
          "trouble",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "SnacksDashboardOpened",
        callback = function(data)
          vim.b[data.buf].miniindentscope_disable = true
        end,
      })
    end
  },
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "aznhe21/actions-preview.nvim",
    config = function()
      --vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
      require("actions-preview").setup({
        diff = { ctxlen = 3, },
         highlight_command = {
          -- require("actions-preview.highlight").delta(),
          -- require("actions-preview.highlight").diff_so_fancy(),
          -- require("actions-preview.highlight").diff_highlight(),
        },
        backend = { "telescope", "nui" },
        telescope = vim.tbl_extend(
          "force",
          require("telescope.themes").get_dropdown(),
          {
            make_value = nil,
            make_make_display = nil,
          }
        ),
        nui = {
          dir = "col",
          keymap = nil,
          layout = {
            position = "50%",
            size = {
              width = "60%",
              height = "90%",
            },
            min_width = 40,
            min_height = 10,
            relative = "editor",
          },
        },
        preview = {
          size = "60%",
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
        },
        select = {
          size = "40%",
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
        },
      })
    end,
  }
}
