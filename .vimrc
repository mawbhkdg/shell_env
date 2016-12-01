" 启用vim高级特性(置于配置最前)  
set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Autodetect multiple encodings
Plugin 'FencView.vim'
"Automatic syntax checking
Plugin 'scrooloose/syntastic'
"Extra highlighting of typedefs, enumerations etc (based on ctags)
Plugin 'TagHighlight'
"add & remove comments with \cc, \uc
Plugin 'git://git.wincent.com/command-t.git'
"Do all your insert-mode completion with Tab!
Plugin 'SuperTab'
Bundle 'tpope/vim-surround'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
"Inserts matching bracket, paren, brace or quote
Plugin 'AutoClose'
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/unite.vim'
"A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
"highlight several words in different colors simultaneously
Plugin 'Mark'

"Plugin 'Valloric/YouCompleteMe'
"使用 vimshell + vimproc 优雅的在 Vim中完成各种CMD,终端操作
"Plugin 'shougo/vimproc.vim'
"Plugin 'shougo/vimshell.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'bling/vim-airline'
"Plugin 'funorpain/vim-cpplint'
"Plugin 'tpope/vim-markdown'
"Plugin 'Markdown'
"Plugin 'Markdown-syntax'
"Plugin 'uarun/vim-protobuf'
"Plugin '_jsbeautify'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

set cul " 高亮光标所在的行, cursorline
set cuc " 将当前光标下的列高亮, cursorcolumn

set nocompatible
set tags=tags
set tags+=~/works/mytags
set et
set encoding=utf-8
set bs=2  "backspace
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'powerlineish'
let g:vimshell_prompt = 'vimshell $ '
let g:ycm_confirm_extra_conf = 0

" 始终显示行号
set ruler " 显示标尺
set nu " number 行号

set bg=dark " background

" 设置语法高亮
syntax enable
syntax on

" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

if(!g:isGUI)
    set term=xterm-256color " gvim error, if without vim error
    "------------------------------
    "could be selected
    "colorscheme nazca
    "colorscheme smyck
    "colorscheme thor
    "colorscheme jellybeans
    "colorscheme badwolf
    "colorscheme ir_black
    "colorscheme leo

    "colorscheme herald
    "colorscheme kolor
    colorscheme lilydjwg_dark
    "colorscheme lilypink
    "colorscheme molokai
    "------------------------------
    "bg gray
    "colorscheme obsidian
    "colorscheme symfony
    "colorscheme tchaba
    "colorscheme Monokai
    "colorscheme blacklight
    "------------------------------
    "color nice
    "colorscheme southernlights
    "colorscheme vibrantink
    "colorscheme vividchalk
    "colorscheme inkpot
    "colorscheme ingretu

endif

" 图形界面
if (g:isGUI)
    "------------------------------
    "could be selected
    "colorscheme nazca
    "colorscheme smyck
    "colorscheme thor
    "colorscheme jellybeans
    "colorscheme badwolf
    "colorscheme ir_black
    "colorscheme leo

    "colorscheme herald
    "colorscheme kolor
    colorscheme lilydjwg_dark
    "colorscheme lilypink
    "colorscheme molokai
    "------------------------------
    "bg gray
    "colorscheme obsidian
    "colorscheme symfony
    "colorscheme tchaba
    "colorscheme Monokai
    "colorscheme blacklight
    "------------------------------
    "color nice
    "colorscheme southernlights
    "colorscheme vibrantink
    "colorscheme vividchalk
    "colorscheme inkpot
    "colorscheme ingretu
    " colorscheme solarized
    set guifont=Monaco\ for\ Powerline:h16
    set lines=30 columns=100
    set mouse=a
    let s:lines=&lines
    let s:colums=&columns

    " Toggle Menu and Toolbar 使用F2隐藏/显示菜单
    set guioptions-=m
    set guioptions-=T
    set guioptions+=e

    set transparency=30      " 透明背景"
    set showtabline=2        " 开启自带的tab栏"

    hi cursorline guibg=#222222
    hi CursorColumn guibg=#333333
    
    map <silent> <F2> :if &guioptions =~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <bar>
    \else <Bar>
    \set guioptions+=T <Bar>
    \set guioptions+=m <Bar>
    \endif<CR>
endif

" 自动重新读入
set autoread " 当文件在外部被修改，自动更新该文件

set laststatus=2 " 总是显示状态栏"
let g:Powerline_symbols = 'fancy' " 'unicode'

nmap <F7> :make<CR>:copen<CR><C-W><C-P>
"nmap <F8> :call Cpplint()<CR>
nmap <F3> :Unite -start-insert file_rec/async:!<CR>
nmap gd :YcmCompleter GoTo<CR>
nmap <F9> :TagbarToggle<CR>
nmap <F10> :NERDTreeToggle<CR>
let g:tagbar_autofocus = 1
map <F8> :set paste!<BAR>set paste?<CR>
set pastetoggle=<F8>

nnoremap <kPlus> <C-a>
nnoremap <kMinus> <C-x>

nmap <D-v> "yp
vmap <D-v> "yp

" Enable TAB indent and SHIFT-TAB unindent
vnoremap <silent> <TAB> >gv
vnoremap <silent> <S-TAB> <gv

"" Move in INSERT
"imap <M-h> <C-o>h
"imap <M-j> <C-o>j
"imap <M-k> <C-o>k
"imap <M-l> <C-o>l

" 使用sudo权限保存
" 下一行去掉/
" cmap w!! w !sudo sh -c /"cat > %"
cmap w!! w !sudo tee >/dev/null %

" 设置NerdTree
cmap tree NERDTree

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" 搜索相关{
    " 搜索忽略大小写
    set ignorecase
    set smartcase

    " enable magic matching  
    set magic  
       
    " show matching bracets  
    set showmatch

    " 搜索逐字符高亮
    set incsearch

    set hlsearch " 高亮显示搜索的内容
" }

" 缩进{
    set cindent
    set autoindent
    set smartindent

    " 制表符(设置所有的tab和缩进为4个空格){
        " 设置Tab键的宽度
        set shiftwidth=4 " set sw=4
        set tabstop=4 " set ts=4

        " 将Tab键更改为空格
        set expandtab
        
        " 编辑模式的时候按退格键的时候退回缩进的长度,当使用 expandtab 时特别有用
        set softtabstop=4
        
        " 显示tab和空格
        set list
        " 设置tab和空格样式
        set lcs=tab:\|\ ,nbsp:%,trail:- " listchars 

        " 这里是为了php的编码规范需求，所以也可以将文件只限定为php生效
        " autocmd FileType php set expandtab
    "}
" }

" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'


augroup plugin_initialize
autocmd!
    autocmd BufEnter * call LoadPluginSettings()
augroup END

function! LoadPluginSettings()
    if exists(':NERDTree')
        let g:NERDTreeIgnore = ['\.pyc$', '\.class$']
        nnoremap <silent> <Leader><Leader>d :NERDTreeCWD<CR>
    endif
endfunction

