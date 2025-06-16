require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.autocomplete',
    require 'plugins.treesitter',
--    require 'plugins.color_gruvbox',
--    require 'plugins.color_gruvbox-material',
--    require 'plugins.color_tokyonight',
--    require 'plugins.color_nord',
    require 'plugins.color_catpuccin',
--    require 'plugins.neorg',
    require 'plugins.lazygit',
--    require 'plugins.oil',
    require 'plugins.telescope',
--    require 'plugins.orgmode-nvim',
    require 'plugins.outline',
    require 'plugins.prettier',
    require 'plugins.lsp',
    require 'plugins.gitsigns',
    require 'plugins.mini',
    require 'plugins.nvim-autopairs'
})
