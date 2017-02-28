set title         " 編集中のファイル名を表示
set number        " 行番号を表示
set wrap          " 行末まで行ったら折り返し
set tabstop=2     " タブの空白数
set shiftwidth=2  " インデント
set expandtab     " タブの代わりに空白を挿入
set noswapfile    " スワップファイルを作らない
set ruler         " ルーラを表示
set showmatch     " 閉じ括弧入力時、対応した開き括弧
set incsearch     " インクリメンタルサーチ
set hlsearch      " 検索結果のハイライト
set ignorecase    " 検索時、大文字と小文字を区別しない
set hidden        " バッファが編集中でもその他のファイルを開けるように
set smartcase     " 検索文字列に大文字が入ったらignorecaseを無効にする
set showcmd       " 入力中のコマンドをステータスに表示する
set autoindent    " 自動でインデントを揃える
set smarttab      " 行頭の余白でTab押下時、ShiftWidthの分だけインデント
set smartindent   " C構文を認識し、いいカンジにしてくれる
set nobackup      " バックアップを生成しない
set autoread      " 編集中のファイルが変更されたら自動で再読込
set fenc=utf-8    " 文字コードをutf-8に設定
set list          " タブ文字をCTRL-Lで表示し、行末に$を表示
set backspace=indent,eol,start  " バックスペースで消せる文字を追加
set listchars=tab:>-,nbsp:%,extends:>,precedes:<,eol:$
set laststatus=2  " 常にステータスラインｗを表示する
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" カラースキームの変更
colorscheme molokai

" シンタックハイライト
syntax enable

" コメントの色
highlight Comment ctermfg=DarkCyan

" 検索結果のハイライトを解除
nnoremap <ESC><ESC> :nohlsearch<CR>

autocmd Filetype c                  set cindent
autocmd BufNewFile,BufRead *.tss    set filetype=css
autocmd BufNewFile,BufRead *.ru     set filetype=ruby
autocmd BufNewFile,BufRead *.jml    set filetype=javascript


" --------------------------------------------------------------
" dein.vim
" filetype off

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=/Users/msk6252/.vim/dein/repos/github.com/Shougo/dein.vim

    " Required:
    if dein#load_state('/Users/msk6252/.vim/dein')
        call dein#begin('/Users/msk6252/.vim/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/Users/msk6252/.vim/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
    
    " Neocomplacahce.vim
    call dein#add('Shougo/neocomplcache.vim')
    "let g:acp_rnableAtStartup =0
    "let g:neocomplete#enable_at_startup = 1
    "let g:neocomplete#enable_smart_case = 1
    "if !exists('g:neocomplete#force_omni_input_paterns')
    "  let g:neocomplete#force_omni_input_patterns = {}
    "endif

    " Neocomplete.vim
    call dein#add('Shougo/neocomplete.vim')

    " Required:
    call dein#end()
    call dein#save_state()
    endif

    " Required:
    filetype plugin indent on
    syntax enable

    " If you want to install not installed plugins on startup.
     if dein#check_install()
          call dein#install()
     endif

"-------------------------------------------------------
  "neocomplacache.vim
  " 起動時にneocomplcacheを有効に
  let g:neocomplcache_enable_at_startup = 1
  " smartcaseの有効化
  let g:neocomplcache_enable_smart_case = 1
  " キーワードをキャッシュするときの最小文字数
  let g:neocomplcache_min_syntax_length = 3
  " neocomplcacheを自動的にロックするバッファ名のパターン
  " let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

  " dictionaryの設定
  let g:neocomplcache_dictionary_filetype_lists = {
   \ 'default' : ''
  \ }

  "   " 補完した文字を消す
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  "   " 補完候補の共通部分を補完
  inoremap <expr><C-l>     neocomplcache#complete_common_string()

   " Recommended key-mappings.
   " <CR>: close popup and save indent.
   inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
   function! s:my_cr_function()
     return neocomplcache#smart_close_popup() . "\<CR>"
     endfunction
     " <TAB>: completion.
     inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
     " <C-h>, <BS>: close popup and delete backword char.
     inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
     inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
     inoremap <expr><C-y>  neocomplcache#close_popup()
     inoremap <expr><C-e>  neocomplcache#cancel_popup()

  "--------------------------------------------------------------------------
  "" neocomplete.vim
  let g:acp_enableAtStartup = 0 " AutoComplPop を無効化
  let g:neocomplete#enable_at_startup = 1 " neocomplete を起動時に有効化
  let g:neocomplete#enable_smart_case = 1 " 大文字が入力されるまで大文字小文字の区別を無視する
  if !exists('g:neocomplete#force_omni_input_patterns')
      let g:neocomplete#force_omni_input_patterns = {}
  endif

"End dein Scripts-------------------------
