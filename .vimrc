set nocompatible
filetype off 

" Enable Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

" Vundle managed plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'                " grubox theme
Plugin 'christoomey/vim-tmux-navigator' " Tmux integration
Plugin 'itchyny/lightline.vim'          " Light-weight (haha) power line
Plugin 'junegunn/fzf.vim'               " Blazing fast searches
Plugin 'mileszs/ack.vim'                " Search + Result list
Plugin 'Valloric/YouCompleteMe'         " Autocomplete
Plugin 'tpope/vim-surround'             " Makes quoting and unquoting a breeze
Plugin 'tpope/vim-fugitive'             " Killer git wrapper
Plugin 'tpope/vim-sensible'             " Sensible defaults
Plugin 'airblade/vim-gitgutter'         " Show what changed in the gutter
Plugin 'tmhedberg/SimpylFold'           " Python folding
Plugin 'rizzatti/dash.vim'              " Dash integration
Plugin 'terryma/vim-multiple-cursors'   " Multiple cursor support
Plugin 'scrooloose/nerdcommenter'       " Commenting
Plugin 'godlygeek/tabular'              " Text alignment
Plugin 'w0rp/ale'                       " Async Linting
Plugin 'tpope/vim-vinegar'              " Browse directory
Plugin 'ludovicchabant/vim-gutentags'   " Better tag handling
Plugin 'hashivim/vim-terraform'         " Terraform integration
Plugin 'pangloss/vim-javascript'        " Indenting and syntax
Plugin 'mxw/vim-jsx'                    " JSX syntax highlighting
Plugin 'alvan/vim-closetag'             " Close x(html) and jsx tags
Plugin 'digitaltoad/vim-pug'            " Syntax for Pug (jade) templates
Plugin 'tpope/vim-rails'                " Rails powertools

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
colorscheme gruvbox
set termguicolors
let g:gruvbox_invert_selection=0

" Lightline configuration
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" ACK configuration
let g:ackprg = 'ag --nogroup --nocolor --column'

" FZF Configuraion
set rtp+=~/.fzf
nnoremap <leader>f :Files<cr>

