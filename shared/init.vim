" Configuration shared between Vim and Neovim.  Requires g:vim_config_path.
let g:plugged_directory = g:vim_config_path . '/plugged'
execute 'source ' . g:vim_config_path . '/shared/plugins.vim'
execute 'source ' . g:vim_config_path . '/shared/options.vim'
