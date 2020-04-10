set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after
let &packpath = &runtimepath
source ~/.config/nvim/nvimrc

call plug#begin('~/.local/share/nvim/plugged')
Plug 'francoiscabrol/ranger.vim'
call plug#end()

