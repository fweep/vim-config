" Configure plugins using junegunn/vim-plug.
let plugged_directory = fnamemodify(expand('$MYVIMRC'), ':p:h') . '/plugged'
call plug#begin(plugged_directory)

call plug#end()
