-- Netrw config
vim.opt.path = vim.opt.path + "**"
vim.opt.wildmenu = true
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_liststyle=3")

-- Conceal level
vim.opt.conceallevel = 0

-- Line width
vim.opt.textwidth = 80

-- Disable intro screen
vim.cmd("set shm+=I")

-- General
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"  -- Always reserve space for signs

vim.opt.fillchars = {
  fold = " ",
  vert = "|",
  eob = " ",
  msgsep = "‾"
}

-- Tab handling
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Tab indent for markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function ()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
    vim.opt.expandtab = true
  end
})

-- Folding
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt_local.foldlevel = 99  -- Start with folds open; adjust as needed
    vim.opt_local.foldenable = true
    -- Map <Tab> to toggle folds
    vim.api.nvim_buf_set_keymap(0, "n", "<Tab>", "za", { noremap = true, silent = true })
  end
})

-- Folding refresh
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*.md",
  callback = function()
    vim.cmd("normal! zx")
  end,
})

-- Disable mode text when using status line
vim.opt.showmode = false

-- Enable row highlight
vim.opt.cursorline = true
