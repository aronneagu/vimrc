" How to copy .vimrc to other machines
" #git clone https://github.com/gmarik/Vundle.vim .vim/bundle/vundle
" in vim, exec command PluginInstall
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'xuhdev/SingleCompile'
Plugin 'vim-scripts/DrawIt'
filetype plugin indent on
nmap <silent> <F3> :NERDTreeToggle  <CR>
"let g:nerdtree_tabs_open_on_console_startup=0
let g:ctrlp_show_hidden=1
let NERDTreeShowHidden=1
syntax enable
colorscheme default
set cindent
set hidden

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set wildmenu
set wildmode=full
set ruler

set ignorecase
set smartcase
set hlsearch
set incsearch

set wrap
set textwidth=79
set formatoptions=tc
"set colorcolumn=80 
set relativenumber

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

let mapleader = ","
inoremap jj <ESC>
map <F2> :<up><CR>
map <C-v> :shell<CR>
map <F4> :x<CR>
nmap <F8> :TagbarToggle<CR>

" Tagbar plugin options
"let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
" autocmd FileType * nested :call tagbar#autoopen(0)


" CtrlP plugin options
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir='$HOME/.cache/ctrlp'
let g:ctrlp_tabpage_position='ac'
let g:ctrlp_working_path_mode='r'

" Ack plugin options
let g:ack_default_options=" --sort-files -H --nocolor --nogroup --column "
let g:ackpreview=1
let g:ack_autoclose=1

nnoremap <F7> :CtrlPTag<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
inoremap <c-]> <c-x><c-]>

set statusline= " clear statusline
set statusline+=%F " tail of filename
set statusline+=%= " move to right side of statusline
set statusline+=row:%4l/%L " cursor line/total lines
set statusline+=\ %3p%% " percent through file

au BufEnter *.c compiler gcc
