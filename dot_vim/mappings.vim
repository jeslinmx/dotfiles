" Leader mappings

let g:mapleader = " "

let g:nleadermap = {
    \ 'u': [':UndotreeToggle', 'undotree']
    \ }

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
nnoremap gb :bnext<CR>
nnoremap gB :bNext<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bNext<CR>
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
nnoremap <silent> <expr> j (v:count > 0 ? 'j' : 'gj')
nnoremap <silent> <expr> k (v:count > 0 ? 'k' : 'gk')
vnoremap <silent> <expr> j (v:count > 0 ? 'j' : 'gj')
vnoremap <silent> <expr> k (v:count > 0 ? 'k' : 'gk')

" Remappings
imap jj <Esc>
tmap jj <C-W>N
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
vmap <silent> < <gv
vmap <silent> > >gv

