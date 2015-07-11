set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-haml'
Plugin 'thoughtbot/vim-rspec'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Font setting
set encoding=utf-8

" Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Add powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

" Nerdtree settings
let NERDTreeShowHidden=1

" Make backspace work
set backspace=2

let $LOCALFILE=expand("~/.vimrc.local")
if filereadable($LOCALFILE)
  source $LOCALFILE
endif