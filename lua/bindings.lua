local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
map('n', '<m-n>', '"zdd"zp', opts) -- Move line down
map('n', '<m-e>', '"zdd"zkP', opts) -- Move line up
map('i', '<c-t>', '<esc>', opts) -- return to normalcy
map('n', '<c-d>', ':q<cr>', opts) -- c-d to close file
map('i', '<tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"',
    {noremap = true, silent = true, expr = true}) -- next item in coc list
map('i', '<s-tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "\\<C-h>"',
    {noremap = true, silent = true, expr = true}) -- prev item in coc list
map('n', '<F2>', '<Plug>(coc-rename)', opts) -- rename
map('n', '<F8>', '<Cmd>TagbarToggle<cr>', opts) -- show ctags
vim.keymap.set('n', 'zR', require('ufo').openAllFolds) -- ufo
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds) -- ufo

-- whichkey
vim.opt.timeoutlen = 100
vim.g.which_key_timeout = 100
local wk = require('whichkey_setup')
wk.config{
    hide_statusline = true,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode='n'
}

wk.register_keymap('leader', {
    s = {
        name = '+jump',
        d = {'<Plug>(coc-definition)', 'definition'},
        r = {'<Plug>(coc-references)', 'references'},
        t = {'<Plug>(coc-type-definition)', 'type definition'},
        s = {'<Cmd>BLines<cr>', 'fzf current buffer'},
        S = {'<Cmd>Lines<cr>', 'fzf all buffers'},
    },
    nt = {'<Cmd>NERDTreeToggle<CR>', 'nerdtree'}, -- originally nt
    rc = {'<Cmd>tabedit $MYVIMRC<cr><Cmd>NERDTree ~/.config/nvim/<cr>', 'nvim config'}, -- originally rc
    c = {
        name = '+appearance',
        d = {'<Cmd>set background=dark<cr>', 'dark'},
        l = {'<Cmd>set background=light<cr>', 'light'},
    },
    e = {'<Cmd>CocDiagnostics<cr>', 'errors'},
    h = {'<Cmd>call CocActionAsync("doHover")<cr>', 'hover'},
    q = {'<Plug>(coc-fix-current)', 'quick fix'},
    l = {
        name = '+latex',
        c = {'<Cmd>VimtexCompile<cr>', 'toggle compile'},
    },
})

return false
