<<<<<<< HEAD
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
"set fileencodings=

=======
>>>>>>> 288a1744bf11912151ceed78f5ab1700a9180ae5
"-------------------------------------------------
"表示設定
"-------------------------------------------------
"行番号の表示
set number
"対応するカッコやブレースを表示
set showmatch matchtime=1
"ステータス行を常に表示
set laststatus=2
"コメントの色の設定
hi Comment ctermfg=green
"不適切な公文を記述した際に赤く表示する
syntax enable
"タイトルを表示
set title
"シンタックスハイライト
syntax on
"インデント方法
set cinoptions+=:0
"メッセージ表示欄を二行確保
set cmdheight=2
"ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
"行末のスペースを可視化
set listchars=tab:^\ ,trail:~
"インデント幅
set shiftwidth=4
"開業時に入力された行の末尾に合わせて次の行のインデントを増減させる
set smartindent

"------------------------------------------------
"プラグインマネージャ
"------------------------------------------------
"neobundle
"Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
    set nocompatible
endif

"必須
set runtimepath+=~/.vim/bundle/neobundle.vim/

"必須
call neobundle#begin(expend('~/.vim/bundle/'))

"NeobundleにNeobundleを管理させる
NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
