set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
	
Plugin 'scrooloose/nerdtree'
	
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'
	
call vundle#end()            " required
	
filetype plugin indent on    " required
	
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
autocmd filetype make set noexpandtab " мейкфайл с табами
set textwidth=80
set expandtab
set tabstop=4
set number
syntax on
"bash looking notes
set wildmode=longest:list,full
"window manage
set noequalalways
set winheight=20
"file encoding
set fileencoding=utf-8

"Gruvbox
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

"NERD TRee
map <C-n> :NERDTreeToggle<CR>
" Немного магии, если мы запустим Vim без указания файла для редактирования,
" то дерево будет открыто, а если будет указан файл, то дерево
" открыто не будет
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Открывать новые окна справа
set splitright
	
"Airline plugin
let g:airline_theme='gruvbox'
	
"Auto-pairs plugin
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
	
"Ultisnipps plugin
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
