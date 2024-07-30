-- ------------------------------------------------------------------------------------------------
-- Install/Config file to orgmode
-- File create by Valdigleis (Dk4LL) valdigleis@gmail.com
-- Date: 30/07/2024
-- ------------------------------------------------------------------------------------------------

return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    })
  end,
}
