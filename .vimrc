" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Python
Plug 'davidhalter/jedi-vim'

" Rust
Plug 'rust-lang/rust.vim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax enable
filetype plugin indent on

" Unified color scheme (default: dark)
colo seoul256
