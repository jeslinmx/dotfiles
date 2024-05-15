call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'

" Editing
Plug 'tpope/vim-sensible' " sane defaults
Plug 'tpope/vim-repeat' " extends . to plugin actions
Plug 'tpope/vim-sleuth' " detect shiftwidth and expandtab
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch' " shell commands as :-commands
Plug 'tpope/vim-speeddating' " ctrl-a/x on dates and times
Plug 'tpope/vim-unimpaired' " useful mappings
Plug 'editorconfig/editorconfig-vim'
Plug 'girishji/easyjump.vim' " s + 2 chars to go anywhere
Plug 'jiangmiao/auto-pairs' " automatically insert brackets and quotes as pairs
Plug 'machakann/vim-highlightedyank'
Plug 'vim-scripts/ReplaceWithRegister' " gr command
Plug 'mbbill/undotree'
Plug 'chrisbra/Recover.vim' " compare with .swp files
Plug 'tibabit/vim-templates' " file format templates

" Editor visuals
Plug 'gorodinskiy/vim-coloresque' " hex code color previews
Plug 'luochen1990/rainbow' " rainbow parentheses
Plug 'vim-scripts/Smooth-Scroll'
Plug 'tinted-theming/base16-vim'

" LSP/code completion/formatting
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" UI
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'tpope/vim-vinegar' " better netrw
Plug 'vim-scripts/ZoomWin' " hide all but current window
Plug 'Donaldttt/fuzzyy'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'moll/vim-bbye' " delete buffers without closing windows
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/vim-peekaboo' " preview registers
Plug 'junegunn/goyo.vim' " zen mode
Plug 'junegunn/limelight.vim' " zen mode highlighting
Plug 'girishji/devdocs.vim'
Plug 'girishji/autosuggest.vim' " dropdown suggestions for : and /
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

call plug#end()
