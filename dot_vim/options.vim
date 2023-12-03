colorscheme catppuccin_mocha

" auto resize windows when terminal is resized
augroup resizewindows
    autocmd!
    autocmd VimResized * tabdo wincmd =
augroup END

" auto toggle between absolute and relative line numbers:
set number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" live update what is being search
augroup incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

set encoding=UTF-8
set nomodeline
" enable mouse support
set mouse=a
" use 24-bit color
set termguicolors
" disable the --MODE-- message in lastline
set noshowmode
" show partial command in lastline
set showcmd showcmdloc=last
" make whitespace visible
set list
set listchars=trail:◦,multispace:◦,leadmultispace:\ ,nbsp:⍽,tab:-->,precedes:«,extends:»
" disable line wrapping, turn on graduated scrolling
set nowrap sidescroll=5
" wrap at word boundaries
set linebreak
" indicate word wraps in the gutter
set showbreak=\ ++\ … cpoptions+=n
" yank to clipboard
set clipboard=unnamedplus
" case-insensitive searching except when uppercase characters present
set ignorecase smartcase
" hide buffers when they are unloaded, instead of closing them
set hidden
" new splits are created at right and bottom, instead of left and top
set splitbelow splitright
" show tabline all the time, even when there's only one tabpage
set showtabline=2
" persist undo history
if has("persistent_undo")
   let target_path = expand('~/.local/state/vim/undo')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

let g:highlightedyank_highlight_duration = 200
let g:highlightedyank_highlight_in_visual = 0

let g:scroll_factor = 1

let g:smalls_jump_trigger = '<CR>'
let g:smalls_auto_jump = 1
let g:smalls_auto_jump_min_input_length = 2
let g:smalls_auto_set_min_input_length = 2

let g:undotree_WindowLayout = 3
let g:undotree_DiffAutoOpen = 0
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
