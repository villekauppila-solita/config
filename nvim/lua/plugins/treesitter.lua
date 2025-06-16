return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                'lua',
                'bash',
                'terraform',
                'python',
                'go',
                'bicep',
--                'markdown',
            },
            auto_install = true,
            highlight = {
                enable = true,
                disable = { "dockerfile", "markdown" },
                additional_vim_regex_highlighting = { 'ruby', 'markdown' },
            },
        }
    end,
}
