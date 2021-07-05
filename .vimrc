let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins go here
" Programming Language support
Plug 'sheerun/vim-polyglot'

" Color schemes
Plug 'flazz/vim-colorschemes'

" Fuzzy finder for file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Linter
Plug 'dense-analysis/ale'

" Git support
Plug 'tpope/vim-fugitive'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'

" Initialize plugin system
call plug#end()

" filetype plugin indent on
" syntax on
set tw=79
set tabstop=4
set shiftwidth=4
set expandtab
set ruler

" autocmd bufnew,bufread *.jsx setlocal tw=120 tabstop=2 shiftwidth=2
colorscheme Monokai
