function! s:apply_highlight_groups()
    hi link SpecialKey NonText
    hi HighlightedyankRegion cterm=reverse gui=reverse
    hi GitGutterAdd NONE ctermfg=2
    hi GitGutterChange NONE ctermfg=4
    hi GitGutterDelete NONE ctermfg=3
    hi EndOfBuffer ctermfg=0 guifg=bg
endfunction

autocmd! ColorScheme * call s:apply_highlight_groups()

if exists('$BASE16_THEME')
    \ && (!exists('g:colors_name')
    \ || g:colors_name != 'base16-$BASE16_THEME')
  let base16colorspace=256
  colorscheme base16-$BASE16_THEME
endif
