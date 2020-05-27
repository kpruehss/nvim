" Always Source these
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
" Source depending on if VSCode is our client
if exists('g:vscode')
  source $HOME/.config/nvim/vscode/windows.vim
else
  " Themes
  source $HOME/.config/nvim/themes/airline.vim
  " source $HOME/.config/nvim/themes/one.vim
  " source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/gruvbox.vim
  " source $HOME/.config/nvim/themes/gruvbox-material.vim
  source $HOME/.config/nvim/themes/syntax.vim
  " Plug Configs
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/commentary.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/incsearch.vim
  source $HOME/.config/nvim/plug-config/indent-guides.vim
  source $HOME/.config/nvim/plug-config/limelight.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/ranger.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/test.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/vimwiki.vim
  source $HOME/.config/nvim/plug-config/vista.vim
endif

