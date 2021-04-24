" Configure plugins using junegunn/vim-plug.  Requires g:plugged_directory to be set.
call plug#begin(g:plugged_directory)

Plug 'fweep/vim-tabber'

Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

Plug 'mileszs/ack.vim'

Plug 'kien/ctrlp.vim'

Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_suppress_keymaps = 1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
