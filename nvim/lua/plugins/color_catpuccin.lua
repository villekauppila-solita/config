return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
	opts = {
        transparent_background = true
    },
    config = function(_, opts)
		require("catppuccin").setup(opts)
        vim.cmd.colorscheme('catppuccin')
	end,
}
