-- ------------------------------------------------------------------------------------------------
-- Install/Config file plugins to tools auxiliar of the Neovim
-- Author: Valdigleis (Dk4LL) - dk4ll@proton.me
-- Date: 21/10/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  {
    'barrett-ruth/live-server.nvim',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = { 'LazyGit', 'LazyGitConfig', 'LazyGitCurrentFile', 'LazyGitFilter', 'LazyGitFilterCurrentFile'},
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  }
}
