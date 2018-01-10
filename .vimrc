" 启用vim高级特性(置于配置最前)  
set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
" vim start with target .vimrc: vim -u /XXXX/XXXX/XXXX/.vimrc
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/XXXX/XXXX/.vim/bundle/Vundle.vim
"set rtp+=/XXXX/XXXX/.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('/XXXX/XXXX/.vim/bundle')

Plugin 'gmarik/Vundle.vim'
"Autodetect multiple encodings
Plugin 'FencView.vim'
"Automatic syntax checking
Plugin 'scrooloose/syntastic'
"Extra highlighting of typedefs, enumerations etc (based on ctags)
Plugin 'TagHighlight'
"Do all your insert-mode completion with Tab!
Plugin 'SuperTab'
"Inserts matching bracket, paren, brace or quote
Plugin 'AutoClose'
Plugin 'majutsushi/tagbar'
"Comment functions so powerful—no comment necessary
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
"highlight several words in different colors simultaneously
Plugin 'Mark'
"使用 vimshell + vimproc 优雅的在 Vim中完成各种CMD,终端操作
"vimproc 需要编译
"Plugin 'shougo/vimproc.vim'
"Plugin 'shougo/vimshell.vim'
Plugin 'vim-airline', {'name': 'airline_new'}
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
"Bundle 'Lokaltog/vim-powerline'

"another automatically completions
"Plugin 'AutoComplPop'
"需要编译
"Plugin 'Valloric/YouCompleteMe'
"search and display information from arbitrary sources like files, buffers, recently used files or registers
"Plugin 'shougo/unite.vim'
"Plugin 'vim-multiple-cursors' " Error: Fn (1~10) remapped
"Plugin 'surround.vim'
"Plugin 'funorpain/vim-cpplint'
"Plugin 'uarun/vim-protobuf'

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

let g:vimshell_prompt = 'vimshell $ '
let g:ycm_confirm_extra_conf = 0

" 始终显示行号
set ruler " 显示标尺
set nu " number 行号

set bg=dark " background

" 设置语法高亮
syntax enable
syntax on

let g:airline#extensions#branch#enabled = 1
"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
Plugin 'vim-airline'
"let g:airline_theme = 'powerlineish'
"let g:airline_theme = 'molokai'
"let g:airline_theme = 'luna'

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" neovim python provider
let g:python_host_prog  = '/usr/bin/python'
"let g:loaded_python_provider=1

"设置切换Buffer快捷键"
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>

" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" 设置consolas字体"前面已经设置过
"set guifont=Consolas\ for\ Powerline\ FixedD:h11

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

"----------------------------------------------------------------
"编码设置
"----------------------------------------------------------------
"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set encoding=utf-8
set langmenu=zh_CN.UTF-8
" 设置打开文件的编码格式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码(win)
"set termencoding = cp936
"设置中文提示
language messages zh_CN.utf-8
"设置中文帮助
set helplang=cn
"设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

if(!g:isGUI)
    if !has('nvim')
        set term=xterm-256color " gvim error, if without vim error
    endif
    "------------------------------
    "could be selected
    "colorscheme nazca
    "colorscheme smyck
    "colorscheme thor
    "colorscheme badwolf
    "colorscheme leo

    "colorscheme peaksea
    "colorscheme zenburn
    "colorscheme lilypink
    "colorscheme ir_dark
    "colorscheme molokai
    "colorscheme herald
    "colorscheme kolor
    "colorscheme jellybeans

    colorscheme lilydjwg_dark
    "colorscheme Monokai
    "colorscheme solarized
    "colorscheme twilight256
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

    "colorscheme lilydjwg_dark

    "colorscheme lucius
    "LuciusBlack
    "LuciusLight

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
    "colorscheme solarized

    set guifont=Monaco\ for\ Powerline:h18
    set lines=30 columns=100
    set mouse=a
    let s:lines=&lines
    let s:colums=&columns

    " Toggle Menu and Toolbar 使用F2隐藏/显示菜单
    set guioptions-=m
    set guioptions-=T
    set guioptions+=e

    set transparency=5      " 透明背景"
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

" for powerline
"let g:Powerline_symbols = 'fancy' " 'unicode'

"nmap <F7> :make<CR>:copen<CR><C-W><C-P>
nmap <F7> :VimShellPop -toggle<CR>
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

" youcompleteme for python path
"let g:ycm_python_binary_path = '/usr/bin/python'
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:syntastic_python_python_exec = '/usr/bin/python'

"let g:ycm_python_binary_path = '/Users/wenbin9/anaconda/bin/python'
"let g:ycm_server_python_interpreter = '/Users/wenbin9/anaconda/bin/python'
"let g:syntastic_python_python_exec = '/Users/wenbin9/anaconda/bin/python'

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

if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
        autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|FIXME\|CHANGED\|BUG\|HACK\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
    endif
endif

" fold
let g:skipview_files = [
            \ '[EXAMPLE PLUGIN BUFFER]'
            \ ]
function! MakeViewCheck()
    if has('quickfix') && &buftype =~ 'nofile'
        " Buffer is marked as not a file
        return 0
    endif
    if empty(glob(expand('%:p')))
        " File does not exist on disk
        return 0
    endif
    if len($TEMP) && expand('%:p:h') == $TEMP
        " We're in a temp dir
        return 0
    endif
    if len($TMP) && expand('%:p:h') == $TMP
        " Also in temp dir
        return 0
    endif
    if index(g:skipview_files, expand('%')) >= 0
        " File is in skip list
        return 0
    endif
    return 1
endfunction
augroup vimrcAutoView
    autocmd!
    " Autosave & Load Views.
    autocmd BufWritePost,BufLeave,WinLeave ?* if MakeViewCheck() | mkview | endif
    autocmd BufWinEnter ?* if MakeViewCheck() | silent loadview | endif
augroup end
