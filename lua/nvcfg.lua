vim.opt.expandtab = true -- tabs to spaces
vim.opt.shiftwidth = 4 -- 4 spaces for < and > TODO: change back to 4
vim.opt.softtabstop = 4 -- 4 spaces in a tab TODO: change back to 4
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show other line numbers as relative
vim.opt.smartindent = true -- Smart indent
vim.g.airline_powerline_fonts = 1 -- nice icons for airline
vim.g.wrap = false -- don't wrap lines
vim.g.termguicolors = true -- better colors
vim.g.gruvbox_italic = 1 -- gruvbox can use italic font
vim.cmd("colorscheme onedark") -- colors

-- ufo
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
require('ufo').setup()

-- autoclose
require('autoclose').setup({})

return false
