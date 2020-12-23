set nocompatible
filetype off 

" Enable Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

" Vundle managed plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'fxn/vim-monochrome'             " Theme
Plugin 'itchyny/lightline.vim'          " Light-weight (haha) power line
Plugin 'tpope/vim-sensible'             " Sensible defaults
Plugin 'airblade/vim-gitgutter'         " Show what changed in the gutter
Plugin 'hashivim/vim-terraform'         " Terraform integration
Plugin 'pangloss/vim-javascript'        " Indenting and syntax
Plugin 'mxw/vim-jsx'                    " JSX syntax highlighting
Plugin 'alvan/vim-closetag'             " Close x(html) and jsx tags

call vundle#end() 
filetype plugin indent on 

set noshowmode                    " Don't show --INSERT--. Lightline handles this.
set number                        " Show line numbers
let mapleader=" "                 " Set <leader> to space
set updatetime=100                " Quick update time so gitstatus work better
set timeoutlen=1000 ttimeoutlen=0 " Reduce delay when leaving INSERT mode
set foldmethod=indent
set foldlevel=99

set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set shiftround
set copyindent

" Themes and colors
set background=dark
colorscheme monochrome
set termguicolors

" FZF Configuraion
set rtp+=~/.fzf
nnoremap <leader>f :Files<cr>

