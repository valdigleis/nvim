-- ------------------------------------------------------------------------------------------------
-- Install/Config file to Git tools
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "tpope/vim-fugitive",
    --config = function()
    --  local keyset = vim.keymap.set
    --  keyset("n", "<leader>gb", ":Git blame<CR>", {silent = true})
    --end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      --local keyset = vim.keymap.set

      --keyset("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {silent = true})
      --keyset("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {silent = true})
    end
  }
}
