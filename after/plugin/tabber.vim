if has("gui")
  " Use a terminal-style tabline.
  set guioptions-=e
endif

set showtabline=2 " FIXME tabber should do this itself, since it won't work otherwise

nnoremap <C-t> :exe tabpagenr('$') . "TabberNew"<CR>
" nnoremap <C-d> :tabclose<CR>
nnoremap <leader>. :TabberSelectLastActive<CR>
nnoremap <silent> <Leader>1 :tabnext 1<CR>
nnoremap <silent> <Leader>2 :tabnext 2<CR>
nnoremap <silent> <Leader>3 :tabnext 3<CR>
nnoremap <silent> <Leader>4 :tabnext 4<CR>
nnoremap <silent> <Leader>5 :tabnext 5<CR>
nnoremap <silent> <Leader>6 :tabnext 6<CR>
nnoremap <silent> <Leader>7 :tabnext 7<CR>
nnoremap <silent> <Leader>8 :tabnext 8<CR>
nnoremap <silent> <Leader>9 :tabnext 9<CR>

let g:tabber_wrap_when_shifting = 1
let g:tabber_filename_style = 'filename'
