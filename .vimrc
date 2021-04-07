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

set noswapfile

set backspace=indent,eol,start

syntax on

"set background=dark

colorscheme molokai

set cursorline

set visualbell t_vb=

set shiftwidth=4


" auto completion

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"
" memorize cursor position
"

augroup vimrcEx
	autocmd!
	autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line('$') |
	\   exe "normal! g`\"" |
	\ endif
augroup END

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
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'

NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 'scrooloose/syntastic'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

call neobundle#end()

" ファイルタイプ別のプラグイン,インデントを有効にする
filetype plugin indent on

"
" indent line settings
"

set list lcs=tab:\┆\ 

let g:indentLine_setColors=10

"
" status line settings
"

let g:airline_theme='minimalist'

let g:airline#extensions#tabline#enabled=1

"let g:airline_solarized_bg='dark'

set ttimeoutlen=50

"
" syntastic settings
"



"----------------------------------------------------------
" 補完機能のインストール
"----------------------------------------------------------
if has('lua') " lua機能が有効になっている場合・・・・・・①
    " コードの自動補完
    NeoBundle 'Shougo/neocomplete.vim'
    " スニペットの補完機能
    NeoBundle "Shougo/neosnippet"
    " スニペット集
    NeoBundle 'Shougo/neosnippet-snippets'
endif

"----------------------------------------------------------
" neocomplete・neosnippetの設定
"----------------------------------------------------------
if neobundle#is_installed('neocomplete.vim')
    " Vim起動時にneocompleteを有効にする
    let g:neocomplete#enable_at_startup = 1
    " smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
    let g:neocomplete#enable_smart_case = 1
    " 3文字以上の単語に対して補完を有効にする
    let g:neocomplete#min_keyword_length = 3
    " 区切り文字まで補完する
    let g:neocomplete#enable_auto_delimiter = 1
    " 1文字目の入力から補完のポップアップを表示
    let g:neocomplete#auto_completion_start_length = 1
    " バックスペースで補完のポップアップを閉じる
    inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"

    " エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
    imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
    " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
    imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif
"
