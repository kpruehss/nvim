" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')
" UI
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'            " Handy info
Plug 'retorillo/airline-tablemode.vim'
Plug 'edkolev/tmuxline.vim'               " Make the Tmux bar match Vim
Plug 'ryanoasis/vim-webdevicons'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Plug 'jbgutierrez/vim-better-comments'
" Project Navigation
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'liuchengxu/vista.vim'                " project wide c-tags
Plug 'airblade/vim-rooter'
" Plug 'francoiscabrol/ranger.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'mhinz/vim-startify'
" File Navigation
Plug 'justinmk/vim-sneak'
Plug 'andymass/vim-matchup'                " More powerful matching
Plug 'unblevable/quick-scope'              " Highlight first unique letter in line to jump to word
Plug 'haya14busa/incsearch.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'tpope/vim-projectionist'
Plug 'c-brenn/fuzzy-projectionist.vim'
Plug 'andyl/vim-projectionist-elixir'
Plug 'rbgrouleff/bclose.vim'
" Editing
Plug 'Olical/vim-enmasse'                 " Edit all files in a Quickfix list
Plug 'alvan/vim-closetag'
Plug 'dhruvasagar/vim-table-mode',        { 'on': 'TableModeEnable' }
"Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'
Plug 'elixir-editors/vim-elixir'
Plug 'glts/vim-radical'
"Plug 'jiangmiao/auto-pairs'
Plug 'jasonlong/vim-textobj-css'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-user'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'               " Vim language support
Plug 'tommcdo/vim-exchange'               " Swap regions of text
Plug 'tpope/vim-abolish'                  " String Coercion
Plug 'tpope/vim-commentary'               " Comments stuff
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'                 " Change word surroundings
Plug 'tpope/vim-unimpaired'
" Task Running /REPL
Plug 'janko/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'voldikss/vim-floaterm'
Plug 'ChristianChiarulli/codi.vim'        " Fork of codi with virtual text
" Plug 'metakirby5/codi.vim'
" Git
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'                 " Git stuff in Vim
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim',                   { 'on': 'GV' }
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

