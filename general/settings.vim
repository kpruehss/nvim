" Set leader key
let g:mapleader = "\\"

syntax enable                          " Enable syntax highlighting
set hidden                             " Required to keep multiple buffers open
set nowrap                             " Don't wrap long lines of text
set encoding=utf-8                     " The encoding displayed
set shell=zsh                          " Set zsh as prompt for Vim
set iskeyword+=-                       " treat dash separated words as a word text object"
set backspace=2                        " Backspace deletes like most programs in insert mode
set pumheight=10                       " Make popup menu smaller
set splitbelow                         " Splits appear below
set splitright                         " V-Splits appear to the right
set foldmethod=manual                  " set folding method marker
set completeopt-=preview
set nobackup
set mouse=nv                           " Enable mouse support in Normal/Visual mode
set nobackup                           " Recommended by COC
set nowritebackup                      " Recommended by COC
set noswapfile
set ruler                              " Show cursor position at all times
set showcmd                            " Display incomplete commands
set cmdheight=2                        " More space for COC messages
set laststatus=2                       " Always display the status line
set clipboard^=unnamed,unnamedplus     " Copy & Paste between vim and everything else
set cursorline
set list listchars=tab:»·,trail:·      " Display extra whitespace characters
set showtabline=2                      " Always show tabs
set noshowmode                         " Hide INSERT NORMAL VISUAL modes etc
set history=200                        " Remember the last 200 commands [default=20]
set updatetime=300                     " Better default for diagnostic messages
set shortmess+=c                       " don't give |ins-completion-menu| messages
set signcolumn=yes                     " always show signcolumns
set sessionoptions+=globals            " restore workspace folder session
set inccommand=nosplit
set t_Co=256                           " Support 256 color
set conceallevel=0                     " See `` in markdown files
set scrolloff=10                       " Scroll when reaching 10 lines before start/end of screen
set tabstop=2
set shiftwidth=2
set shiftround
set smarttab
set expandtab  " Use spaces instead of tabs
set smartindent
set statusline=%{FugitiveStatusline()}
set spellfile=$HOME/.config/.vim-spell-en.utf-8.add
set formatoptions-=cro                  " Stop newline continuation of comments
" Absolute numbers in Insert mode, relative numbers everywhere else
set number
set numberwidth=4
autocmd BufEnter,FocusGained,InsertLeave * :set relativenumber
autocmd BufLeave,FocusLost,InsertEnter * :set norelativenumber

" Automatically preseve folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" Make it obvious where 80 characters is
if exists('+colorcolumn')
  set textwidth=80
  set colorcolumn=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

au! BufWritePost $MYVIMRC  source %    " Autosourcing when writing to init.vim
