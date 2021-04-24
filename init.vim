if has('unix')
  let g:loaded_python_provider = 0 " disable python2
  let g:python3_host_prog = $HOME . '/.virtualenvs/neovim3/bin/python'
endif

" Configuration shared between Vim and Neovim.
let g:vim_config_path = stdpath('config')
execute 'source ' . g:vim_config_path . '/shared/init.vim'

" Disable shada for mounted directories that may not be present (causes :q to take forever).
" https://github.com/neovim/neovim/issues/12896
set shada+=r/store
set shada+=r/home/jim/Nextcloud
