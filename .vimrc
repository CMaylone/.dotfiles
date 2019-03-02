set nocompatible
filetype off 


" Enable Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

" Vundle managed plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'								" grubox theme
Plugin 'christoomey/vim-tmux-navigator' " Tmux integration
Plugin 'scrooloose/nerdtree'    				" File Explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'	  " Show git status in NERDTree
Plugin 'itchyny/lightline.vim'  				" Light-weight (haha) power line
Plugin 'junegunn/fzf.vim'       				" Blazing fast searches
Plugin 'mileszs/ack.vim'        				" Search + Result list
Plugin 'Valloric/YouCompleteMe' 				" Autocomplete
Plugin 'tpope/vim-surround'     				" Makes quoting and unquoting a breeze
Plugin 'tpope/vim-fugitive'     				" Killer git wrapper
Plugin 'tpope/vim-sensible'     				" Sensible defaults
Plugin 'airblade/vim-gitgutter' 				" Show what changed in the gutter
Plugin 'scrooloose/syntastic'   				" Better syntax highlighting
Plugin 'pangloss/vim-javascript' 				" Indenting and syntax 
Plugin 'mxw/vim-jsx'            				" JSX syntax highlighting
Plugin 'tmhedberg/SimpylFold'						" Python folding
Plugin 'rizzatti/dash.vim'							" Dash integration
Plugin 'terryma/vim-multiple-cursors'		" Multiple cursor support
Plugin 'scrooloose/nerdcommenter'				" Commenting

call vundle#end() 
filetype plugin indent on 

set noshowmode 	" Don't show --INSERT--. Lightline handles this.
set number 			" Show line numbers

let mapleader=" " " Set <leader> to space

set updatetime=100 " Quick update time so gitstatus work better

let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night_Eighties',
      \ }

" Enable folding
set foldmethod=indent
set foldlevel=99

" Remove delay from leaving INSERT mode
set timeoutlen=1000 ttimeoutlen=0

" ACK configuration
let g:ackprg = 'ag --nogroup --nocolor --column'

" FZF Configuraion
set rtp+=~/.fzf

" Syntasitc Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

set background=dark
colorscheme gruvbox
set termguicolors
let g:gruvbox_invert_selection=0

" NERDTree should show hidden files
let NERDTreeShowHidden=1

" Fix NERDTree Node in OSX Terminal
let g:NERDTreeNodeDelimiter = "\u00a0"

" Open NERDTree automatically when a directory is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close NERDTree if it is the only window left after :q
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Prevent FZF from opening files in NERDTree
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

set tabstop=2
set softtabstop=0
set noexpandtab
set shiftwidth=2
set shiftround
set autoindent
set copyindent
