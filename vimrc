"============================================================================="
"                         Welcome to otaviocv's vimrc
"                                       Enjoy!
"============================================================================="

"Vundle needs  ----------------------------------------------------------------
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ************* PLUGINS *************
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'kana/vim-operator-user'
Plugin 'haya14busa/vim-operator-flashy'
Plugin 'jiangmiao/auto-pairs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'ervandew/snipmate.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/utl.vim'

" ColorSchemes
Plugin 'w0ng/vim-hybrid'
Plugin 'tomasr/molokai'
" ***********************************

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
"----------------------------My basic config ----------------------------------
"------------------------------------------------------------------------------

" ******************************** BASICS *************************************

set nocompatible
set number
set ruler
set mouse=a
set showcmd
set noshowmode
set backspace=2
set nobackup
set noswapfile
set autoindent
set incsearch
set ignorecase
set smartcase

" ** GUI **
set go-=a
set go-=A
set go-=P
set go-=T
set go-=r
set go-=l
set go-=b

" ** TABS **
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" ** Ruler and wordwrapper **
set textwidth=80
let &colorcolumn=join(range(80,80),",")

" ** COLORS **
syntax on
colorscheme molokai
colorscheme hybrid
set t_Co=256
"
" ******************************** KEY BID ************************************

" ** Saving **
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" ******************************** PLUGINS ************************************

" ** AriLine **
set laststatus=2
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='wombat'
let g:airline_left_sep=''
let g:airline_right_sep=''
set ttimeoutlen=50

" ** TmuxLine **
let g:airline#extensions#tmuxline#enabled=0
let g:tmuxline_theme = 'airline_visual'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}

" ** AutoPairs **
"let g:AutoPairsFlyMode=1

" ** Operator Flashy **
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
let g:operator#flashy#flash_time=200
let g:operator#flashy#group='YankHI'


"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

