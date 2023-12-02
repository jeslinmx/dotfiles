" Leader mappings

let g:mapleader = " "

let g:nleadermap = {}

let g:nleadermap.g = {
    \ 'name': '+git',
    \ '<CR>': '<enter raw command>',
    \ 'c': [':Git commit', 'commit'],
    \ }
nnoremap <leader>g<CR> :Git

let g:nleadermap.s = {
    \ 'name': '+set',
    \ 'w': [':set wrap! wrap?', 'wrap'],
    \ }

let g:nleadermap.t = {
    \ 'name': '+term',
    \ 'h': [':terminal', 'h-term'],
    \ 'v': [':vertical terminal', 'v-term'],
    \ }

let g:nleadermap.w = {
    \ 'name': '+win',
    \ 'h': [':split', 'h-split'],
    \ 'H': [':new', 'h-split-new'],
    \ 'v': [':vsplit', 'v-split'],
    \ 'V': [':vnew', 'v-split-new'],
    \ 'q': [':quit', 'quit-window'],
    \ }

call which_key#register('<Space>', "g:nleadermap", 'n')

" Mappings
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap s <Plug>(smalls)

" Remappings
imap jj <Esc>
tmap jj <C-W>N
nmap j gj
nmap k gk
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
vmap j gj
vmap k gk
vmap < <gv
vmap > >gv

