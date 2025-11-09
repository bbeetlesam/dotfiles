-- init.lua: nvim's main entry
local keymaps = require('keymaps')
local indentSpace = 2

-- prepend (put on first) lazyvim path to runtimepath
local lazypath = vim.fn.stdpath("data") .. "/site/pack/plugins/opt/lazy.nvim" -- vim.fn.stdpath("data") will return "/home/$USER/.local/share/nvim"
vim.opt.rtp:prepend(lazypath)

-- import lazyvim
require("lazy").setup("plugins") -- search for ~/.config/nvim/lua/ -> plugins.lua OR plugins/init.lua

-- manual plugins (moved to ~/.local/share/nvim/site/pack/plugins/start/)
--[[require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'ayu_dark',
    section_separators = '',
    component_separators = ''
  }
})

require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false
  },
  cursorworld = {
    enable = true,
    min_length = 3,
    h1 = { underline = true },
  }
} ]]--

-- my keymaps 
keymaps.general()
keymaps.vscode()

-- general configs
vim.cmd('syntax on')
vim.opt.number = true -- show line numbers
vim.opt.smartindent = true
vim.opt.expandtab = true -- change tab from \t to space based
vim.opt.tabstop = indentSpace -- change \t found in the file to n space
vim.opt.softtabstop = indentSpace
vim.opt.shiftwidth = indentSpace -- how many spaces for automate indent/unindent with tab

