" VUNDLE SETUP START
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/vundle-plugins
call vundle#end()             " required
filetype plugin indent on
" VUNDLE SETUP END

" Syntax highlighting
syntax on

" Generic config
set nu                        " Line numbers on
set tabstop=2                 " Use 2 spaces for tabs
set shiftwidth=2              " Use 2 spaces for tabs
set softtabstop=2             " Use 2 spaces for tabs
set expandtab                 " Use spaces instead of tabs
set autoread                  " Set to auto read when a file is changed from the outside
set ruler                     " Always show current position
set ignorecase                " Ignore case when searching
set smartcase                 " When searching try to be smart about cases
set hlsearch                  " Highlight search results
set incsearch                 " Makes search act like search in modern browsers
set showmatch                 " Show matching brackets when text indicator is over them
set ai                        " Auto indent
set si                        " Smart indent
set wrap                      " Wrap lines

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

