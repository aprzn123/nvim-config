vim.api.nvim_create_augroup("aprzn", {clear = true})
vim.api.nvim_create_autocmd("BufWritePost", {
    group = "aprzn",
    pattern = {"*/.config/nvim/*.lua", "*/.config/nvim/lua/*.lua"},
    command = "source $MYVIMRC"
}) -- reload config file on save

-- vim.api.nvim_create_autocmd("VimEnter", {
--     group = "aprzn",
--     pattern = {"*"},
--     command = "NERDTree"
-- }) -- open nerdtree on start

vim.api.nvim_create_autocmd("CursorHold", {
    group = "aprzn",
    pattern = {"*"},
    command = "call CocActionAsync('highlight')"
})

return false
