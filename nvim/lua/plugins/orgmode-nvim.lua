return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/repos/github.com/almenac/GTD/**/*',
      org_default_notes_file = '~/repos/github.com/almenac/GTD/personal.org',
    })
  end,
}
