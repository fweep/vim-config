let g:airline_theme = 'solarized'
let g:airline_skip_empty_sections = 1

" Shorter mode names.
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '^V' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '^S' : 'S',
    \ }

" Disable extensions by default.
" let g:airline_extensions = []

" Disable Git (fugitive) section.
" let g:airline_section_b = ''

" Disable fileencoding, fileformat.
let g:airline_section_y = ''

" Disable percentage/line/col numbers.
let g:airline_section_z = ''
