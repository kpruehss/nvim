" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>
" Set leader key
" let mapleader = "\\"
" let localleader = "\\"
" Better indenting
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')

  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else
  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>

  " Use alt + hjkl to resize windows
  nnoremap <S-A-j>    :resize -2<CR>
  nnoremap <S-A-k>    :resize +2<CR>
  nnoremap <S-A-h>    :vertical resize -2<CR>
  nnoremap <S-A-l>    :vertical resize +2<CR>
  nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>

  " TAB in general mode will move to text buffer
  nnoremap <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <S-TAB> :bprevious<CR>

  " Alternate way to save
  nnoremap <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <C-c> <Esc>
  " <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  " Use <C-l> for trigger snippet expand.
  imap <C-l> <Plug>(coc-snippets-expand)
  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Quickly find file
  nnoremap <C-p> :Files<cr>
  " RipGrep Search for term via FZF
  nnoremap <leader>/ :Rg<cr>
  " Quick Save
  " nmap <leader>w :w<CR>
  nmap <silent> <leader>w :wa<CR>
  " Smarter pasting
  nnoremap <Leader>p :set invpaste paste?<CR>
  " Better buffer switching
  nnoremap <C-e> :Buffers<CR>

  " Move lines up/down [Normal|Insert Mode]
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv

  " Smart indent when entering insert mode with i on empty lines
  function! IndentWithI()
    if len(getline('.')) == 0
      return "\"_ddO"
    else
      return "i"
    endif
  endfunction
  nnoremap <expr> i IndentWithI()

  " Remap the increment and decrement features of Vim
  nnoremap <A-a> <C-a>
  nnoremap å <C-a>

  nnoremap <A-x> <C-x>
  nnoremap ≈ <C-x>

  " Tab Shortcuts
  nnoremap tk :tabfirst<CR>
  nnoremap tl :tabnext<CR>
  nnoremap th :tabprev<CR>
  nnoremap tj :tablast<CR>
  nnoremap tn :tabnew<CR>
  nnoremap tc :CtrlSpaceTabLabel<CR>
  nnoremap td :tabclose<CR>

  " No More Arrow Keys
  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>

  " Terminal mappings
  if has('nvim')
    tmap <C-o> <C-\><C-n>
  endif
endif
