" Enable signs in number column for linting.
set signcolumn=number

" Standard indentation.
setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=99 expandtab

" Stop inserting comment leaders with o/O.
setlocal formatoptions-=o

" Rescan buffer when highlighting. Can resolve syntax highlighting sync
" issues.
" Disabled pending performance evaluation.
" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
