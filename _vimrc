syntax on

set autoindent
set smartindent
set expandtab
set encoding=utf-8
set fileencodings=utf-8
set tabstop=2
set shiftwidth=2
set number
set showmode
set showmatch
set title
set backspace=indent,eol,start
set imdisable
set hidden
set nobackup
set nowritebackup
set conceallevel=0
set clipboard+=unnamedplus,unnamed
" html?̃}?b?`?????^?O??%?ŃW?????v
source $VIMRUNTIME/macros/matchit.vim

" ?s?ԍ????\??
set number
" UTF-8?ŃG???R?[?f?B???O
set encoding=utf-8
" ?V???^?N?b?X?n?C???C?g
syntax enable
syntax on
" title???\??
set title
" vim?̒Z?`?I???ŕ??????Ȃ??Ă??E?ւ????߂?
set virtualedit=block
" wildmenu?I?v?V???????L??
set wildmenu
" ?????C???f???g
set autoindent
" ?C???f???g??
set shiftwidth=2
" ?^?u?L?[?̑}?������????w??
set softtabstop=2
" ?J?b?R???⊮????
inoremap { {}<LEFT>
inoremap ( ()<LEFT>

hi Comment ctermfg=gray

if has('mouse')
  set mouse=a
endif

" vandule plugin--------------------------------
filetype off
set shellslash
set rtp+=~/vim/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vim/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"--------------------------------------------------

" Plugin NerdTree key-mapping
map <C-n> :NERDTreeToggle<CR>

" Golang Auto import
let g:go_fmt_command = "goimports"

if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif
