let g:lightline = { 'colorscheme': 'catppuccin_mocha' }
let g:lightline.active = {
    \ 'left': [
        \ [ 'mode', 'paste', 'cmd' ],
        \ [ 'fugitive' ],
        \ [ 'filename', 'filestatus', 'filetype' ]
        \ ],
    \ 'right': [
        \ [ 'lineinfo' ],
        \ [ 'percent' ],
        \ [ 'fileformat', 'encoding?' ]
        \ ]
    \ }
let g:lightline.inactive = {
    \ 'left': [
        \ [ 'fugitive' ],
        \ [ 'filename' , 'filestatus' ]
        \ ],
    \ 'right': [
        \ [ 'lineinfo' ],
        \ [ 'percent' ],
        \ [ 'fileformat', 'encoding?' ]
        \ ] }
let g:lightline.subseparator = {
    \ 'left': ''
    \ }
let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ [ 'close' ] ] }
let g:lightline.mode_map = {
    \ 'n': '',
    \ 'i': '󰙏',
    \ 'c': '',
    \ 'R': '󰯍',
    \ 'v': '󰈈',
    \ 'V': '󱀦',
    \ "\<C-v>": '󰡫',
    \ 's': '󰒉',
    \ 'S': '',
    \ "\<C-s>": '󰩭',
    \ 't': '',
    \ }
let g:lightline.component = {
    \ 'cmd': '%S',
    \ }
let g:lightline.component_function = {
    \ 'filetype': 'IconFiletype',
    \ 'fileformat': 'IconFileformat',
    \ 'fugitive': 'LightlineFugitive',
    \ 'filestatus': 'LightlineFileStatus',
    \ 'encoding?': 'LightlineNondefaultEncoding',
    \ }

function! IconFiletype()
    return WebDevIconsGetFileTypeSymbol() . ( winwidth(0) > 70 ? ' ' . ( strlen(&filetype) ? &filetype : 'unknown' ) : '' )
endfunction

function! IconFileformat()
    return winwidth(0) > 70 ? WebDevIconsGetFileFormatSymbol() : ''
endfunction

function! LightlineNondefaultEncoding()
    let l:encoding = &fenc !=# '' ? &fenc : &enc
    return l:encoding ==# 'utf-8' ? '' : l:encoding
endfunction

function! LightlineFileStatus()
    return (
        \ &ft ==# 'help' ? '󰣯'
        \ : &modified ? '󰏫'
        \ : &readonly ? '󰏯'
        \ : !&modifiable ? '󰌾'
        \ : '' )
endfunction

function! LightlineFugitive()
    try
        if expand('%t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*FugitiveHead')
            let branch = FugitiveHead()
            return branch !=# '' ? ' ' . branch : ''
        endif
    catch
    endtry
    return ''
endfunction
