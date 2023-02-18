local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
map('n', '<m-n>', '"zdd"zp', opts) -- Move line down
map('n', '<m-e>', '"zdd"zkP', opts) -- Move line up
map('n', '<c-f>', ':BLines<cr>', opts) -- Search (fzf) within current buffer
map('n', '<c-f><c-f>', ':Lines<cr>', opts) -- Search (fzf) within all buffers
map('i', '<c-t>', '<esc>', opts) -- return to normalcy
map('n', '<c-d>', ':q<cr>', opts) -- c-d to close file
map('n', '<leader>sd', '<Plug>(coc-definition)', opts) -- jump to definition
map('n', '<leader>sr', '<Plug>(coc-references)', opts) -- show references
map('n', '<leader>st', '<Plug>(coc-type-definition)', opts) -- show type definition
map('n', '<leader>nt', ':NERDTreeToggle<cr>', opts) -- open file tree
map('n', '<leader>rc', ':tabedit $MYVIMRC<cr>:NERDTree ~/.config/nvim/<cr>', opts) -- open vimrc
map('n', '<leader>er', ':CocDiagnostics<cr>', opts) -- COC show warn/err
map('n', '<leader>h', ':call CocActionAsync("doHover")<cr>', opts) -- show help
map('n', '<leader>qf', '<Plug>(coc-fix-current)', opts) -- apply quick fix
map('i', '<tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"',
    {noremap = true, silent = true, expr = true}) -- next item in coc list
map('i', '<s-tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "\\<C-h>"',
    {noremap = true, silent = true, expr = true}) -- prev item in coc list
map('n', '<F2>', '<Plug>(coc-rename)', opts) -- rename
map('n', '<F8>', ':TagbarToggle<cr>', opts) -- show ctags
vim.keymap.set('n', 'zR', require('ufo').openAllFolds) -- ufo
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds) -- ufo


return false
