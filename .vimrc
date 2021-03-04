" used from March 4 2021...
"
"   __ _     _ _       _             _                    
"  / _(_) __| (_) ___ ( )___  __   _(_)_ __ ___  _ __ ___ 
" | |_| |/ _` | |/ _ \|// __| \ \ / / | '_ ` _ \| '__/ __| "
" |  _| | (_| | | (_) | \__ \  \ V /| | | | | | | | | (__  "
" |_| |_|\__,_|_|\___/  |___/ (_)_/ |_|_| |_| |_|_|  \___| "
"                   　　　　　　　　　　　　　　　　　　　 "
                                               """"""""""""
"
" display settings
"

set laststatus=2

set noerrorbells

set showmatch matchtime=1

set number

set title

set smartindent

set autoindent

set tabstop=4

syntax on

colorscheme peachpuff

"
" plugin settings
"

if has('vim_starting')
	" 初回起動時のみruntimepathにneobundleのパスを指定する
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述する
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()

" ファイルタイプ別のプラグイン,インデントを有効にする
filetype plugin indent on



"
" status line settings
"

let g:airline_theme='solarized'

let g:airline#extensions#tabline#enabled=1

let g:airline_solarized_bg='dark'

set ttimeoutlen=50
