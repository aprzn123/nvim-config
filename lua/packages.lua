vim.opt.termguicolors = true
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Ensure that Packer stays updated
    use { 'dracula/vim', as = 'dracula' } -- Color scheme
    use 'arcticicestudio/nord-vim' -- Color scheme 2
    use 'joshdick/onedark.vim' -- Color Scheme 3
    use 'morhetz/gruvbox' -- Color scheme 4
    use 'lervag/vimtex' -- LaTeX
    use 'junegunn/fzf.vim' -- fuzzy finder
    use 'sirtaj/vim-openscad' -- OpenSCAD syntax highlighting, etc.
    use 'vlelo/arduino-helper.nvim' -- Arduino
    use { 'neoclide/coc.nvim', branch = 'release' } -- LSPs
    use 'tpope/vim-commentary' -- Comment things
    use 'preservim/nerdtree' -- NERDTree: File Viewer
    use 'preservim/tagbar' -- Ctags
    use 'vim-airline/vim-airline' -- status bar
    use 'mattn/emmet-vim' -- html emmets
    use 'm4xshen/autoclose.nvim' -- autoclosing brackets, not sure if I'll keep it
    use 'tpope/vim-surround' -- surround text with brackets
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- better folding
    use 'tpope/vim-fugitive' -- git
    use 'ryanoasis/vim-devicons' -- icons for NERDTree (must be loaded last)
end)

return false
