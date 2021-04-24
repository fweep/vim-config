" Options shared between Vim and Neovim.
execute 'source ' . stdpath('config') . '/shared/options.vim'

" Disable shada for mounted directories that may not be present (causes :q to take forever).
" https://github.com/neovim/neovim/issues/12896
set shada+=r/store
set shada+=r/home/jim/Nextcloud
