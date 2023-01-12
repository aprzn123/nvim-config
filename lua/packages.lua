require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Ensure that Packer stays updated
    use { 'dracula/vim', as = 'dracula' } -- Color scheme
    use 'lervag/vimtex' -- LaTeX
    use 'junegunn/fzf.vim' -- fuzzy finder
    use 'sirtaj/vim-openscad' -- OpenSCAD syntax highlighting, etc.
    use { 'neoclide/coc.nvim', branch = 'release' } -- LSPs
    use 'tpope/vim-commentary' -- Comment things
    use 'preservim/nerdtree' -- NERDTree: File Viewer
    use 'preservim/tagbar' -- Ctags
    use 'vim-airline/vim-airline' -- status bar
    use 'mattn/emmet-vim' -- html emmets
    use 'habamax/vim-godot' -- GDScript
    use 'ryanoasis/vim-devicons' -- icons for NERDTree (must be loaded last)
end)

return false
