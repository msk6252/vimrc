syntax on
set number
colorscheme desert
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'drillbits/nyan-modoki.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
 
call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------


" http://inari.hatenablog.com/entry/2014/05/05/231307
"
" """"""""""""""""""""""""""""""
"  全角スペースの表示
" """"""""""""""""""""""""""""""
 function! ZenkakuSpace()
     highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
     endfunction

     if has('syntax')
         augroup ZenkakuSpace
                 autocmd!
                 autocmd ColorScheme * call ZenkakuSpace()
                 autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
      augroup END
      call ZenkakuSpace()
    endif                                        
 """""""""""""""""""""""""""""""


 """"""""""""""""""""""""""""""
 "nyan-modoki settings"
 
 """"""""""""""""""""""""""""""

 set laststatus=2
 set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
 let g:nyan_modoki_select_cat_face_number = 2
 let g:nayn_modoki_animation_enabled= 1

""""""""""""""""""""""""""""""""
"nyan-modoki settings END"
""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""
       "VimShell Settings"
""""""""""""""""""""""""""""""""""
nnoremap <silent>,is : VimShell<cr>


""""""""""""""""""""""""""""""""""
    "VImShell Settings END"
""""""""""""""""""""""""""""""""""
