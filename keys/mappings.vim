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
  nnoremap <silent> <S-A-j>    :resize -2<CR>
  nnoremap <silent> <S-A-k>    :resize +2<CR>
  nnoremap <silent> <S-A-h>    :vertical resize -2<CR>
  nnoremap <silent> <S-A-l>    :vertical resize +2<CR>
  nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <silent> <S-TAB> :bprevious<CR>

  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  
  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Alternate way to save
  nnoremap <silent> <C-s> :wa<CR>
  
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
  nnoremap td :tabclose<CR>

  " Terminal window navigation
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>

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
