return {
  {
    'echasnovski/mini.nvim',
    config = function ()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }

       local files = require 'mini.files'
       files.setup {
         mappings = {
           go_in_plus = '<CR>'
         }
       }

      local surround = require 'mini.surround'
      surround.setup {
      }

    end
  },
}
