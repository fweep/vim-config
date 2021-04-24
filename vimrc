" Vim8-specific configuration (Neovim uses init.vim).

" Configuration shared between Vim and Neovim.
let g:vim_config_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
execute 'source ' . g:vim_config_path . '/shared/init.vim'

" Extend % matching behavior.
runtime macros/matchit.vim
