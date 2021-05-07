" Yank to system clipboard.
if has("unix") && !has("osx")
  " FIXME check hostname?  unnamedplus only for schonfeld somehow.  maybe look for ~/.vimrc-local
  " set clipboard=unnamedplus
  set clipboard=unnamed
else
  set clipboard=unnamed
end

" Honor modeline settings in files.
set modeline

" Save 10000 lines of history.
set history=10000

" Allow backspace over everything in insert mode.
set backspace=indent,eol,start

" Scroll window sideways by 1 character at a time.
set sidescroll=1

" Keep buffers loaded even if there's no active window into them.
set hidden

" Scroll window instead of wrapping long lines.
set nowrap

" Keep cursor 20 characters from edge of window when scrolling horizontally.
set sidescrolloff=20

" Keep cursor 8 lines from edge of window when scrolling vertically.
set scrolloff=8

" Save undo history between Vim invocations.
set undofile

" Always show statusline.
set laststatus=2

" Allow up to 50 tabs.
set tabpagemax=50

" Reload externally-changed files when there are no changes in Vim.
set autoread

" Allow the cursor to move beyond EOL in visual mode block selections.
set virtualedit=block

" Show line numbers.
set number numberwidth=4

" Reduce the number of hit-enter prompts from status messages and completion notices from deoplete.
set shortmess=aTIFc

" Flash cursor to matching brace in insert mode.
set showmatch matchtime=0

" For multi-character mappings and keycodes, wait 500ms and 50ms respectively
" for the next key press before timing out and running the command.
set timeoutlen=500 ttimeoutlen=50

" Highlight matching patterns when searching.
set hlsearch

" Move to matches as a search is performed.
set incsearch

" Case-insensitive searching when the pattern contains only lowercase.
set ignorecase

" Override ignorecase when the pattern contains uppercase characters.
set smartcase

" :substitute is global by default (append /g to patterns toggle off).
set gdefault

" Display tokens for leading/trailing whitespace, literals tabs and nbsp.
set list listchars=tab:>·,trail:·,nbsp:·,extends:>

" Allow <BS>, <Space>, <Left>, <Right> to line-wrap in normal mode.
set whichwrap=b,s,<,>

" Enable filename completion on <Tab> in command-line.
set wildmenu

" First <Tab> completes longest common match, second <Tab> opens wildmenu.
set wildmode=list:longest,list:full

" Ignore files matching these patterns when completing.
set wildignore+=*/.git
set wildignore+=*/*.swp
set wildignore+=*/tmp/*

" Enable mouse in all modes.
set mouse=a

" Don't redraw while executing macros.
set lazyredraw

" Expand the default preview window size (used by Fugitive for Gstatus, etc).
set previewheight=20

" Make ~ for case-swapping require a motion by default.
set tildeop

" Save more history for marks, commands, searches, etc. between invocations.
if has("nvim")
  set shada='100,/1000,:1000,<50,s100,h,c
else
  set viminfo='100,/1000,:1000,<50,s100,h,c
endif

" Support SGR mouse if available, fall back to xterm2 mouse.
if !has("nvim")
  if has("mouse_sgr")
    " Allows mouse clicking beyond terminal column 222.
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif
