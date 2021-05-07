" Change leader from default \.
let mapleader = ','

" Toggle search highlighting off more easily.
nnoremap <silent> <leader>h :nohlsearch<CR>

" Make Y behave like C and D.
nnoremap Y y$

" Make X like D into a black hole.
nnoremap X "_D

" Make x use the black hole register (don't ever want the single character in the clipboard).
nnoremap x "_x

" Map jk to <Esc> in insert mode.
inoremap jk <Esc>

" Disable <F1> help because I always fat-finger <Esc> on tiny keyboards.
nnoremap <F1> <Nop>

" <F2> toggles paste mode in normal/insert modes.
nnoremap <silent> <F2> :set paste!<CR>
set pastetoggle=<F2>

" Disable paste mode when leaving insert mode.
autocmd InsertLeave * set nopaste

" Visually select entire buffer.
nnoremap <Leader>a ggVG

" Default to "very magic" mode for searching.
nnoremap / /\v
vnoremap / /\v

" Use C-a to move to beginning of ex command line.
cnoremap <C-a> <Home>

" Make <Home> alternately jump between column 0 and the first non-whitespace column.
" FIXME: make this a plugin
nnoremap <silent> <Home> :call Home()<CR>
inoremap <silent> <Home> <C-O>:call Home()<CR>

if !exists("*Home")
  function Home()
    let curcol = wincol()
    normal ^
    let newcol = wincol()
    if newcol == curcol
      normal 0
    endif
  endfunction
endif

" Delete trailing whitespace from every line in current buffer.
" FIXME: make this a plugin
nnoremap <silent> <Leader>w :call DeleteTrailingWhitespace()<CR>

function! DeleteTrailingWhitespace()
    let line = line(".")
    let col = col(".")
    %s/\s\+$//e
    call cursor(line, col)
endfunction
