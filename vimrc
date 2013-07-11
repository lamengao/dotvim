set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" My Bundles here:
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tsaleh/vim-matchit'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "lamengao/vim-snipmate"

Bundle "othree/html5.vim"
Bundle "lunaru/vim-less"

Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
"Bundle 'kana/vim-smartinput'
"Bundle 'Shougo/neocomplcache.git'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'toggle_words.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'

Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on     " required!

"set clipboard+=unnamed      "将默认剪贴板设置为系统剪贴板
set nocompatible
set nobackup
set nowritebackup
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
"setlocal noswapfile
"set noswapfile
set dir=/tmp

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

syntax on
syntax enable

set term=xterm-256color
set t_Co=256
set background=dark
colo natalie

" editor settings
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif


" 在搜索的时候忽略大小写
set ignorecase
set smartcase

set ruler			                " 显示光标位置
set cursorline
set confirm			                " 操作過程有衝突時，以明確的文字來詢問
set history=100		                " 保留 100 個使用過的指令
set backspace=indent,eol,start      " More powerful backspacing

set scrolljump=5	"当光标达到上端或下端时 翻滚的行数
set sidescroll=5	"当光标达到水平极端时 移动的列数
set scrolloff=0		"当光标距离极端(上,下,左,右)多少时发生窗口滚动

autocmd BufNewFile,BufRead *.py set colorcolumn=85
autocmd BufNewFile,BufRead *.js set colorcolumn=85

set expandtab		" 用空格代替制表符
set autoindent
set smartindent		" indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace & 
set shiftwidth=4    " indent width
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType sass,scss,css,less setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2

let mapleader = ","

set gdefault
set incsearch
set hlsearch
set pastetoggle=<F3>
nnoremap <leader><space> :noh<cr>   "使用<leader>空格来取消搜索高亮

nnoremap ; :

set wildmenu        " 增强模式中的命令行自动完成操作
set autochdir
set showcmd         " 输入的命令显示出来，看的清楚些。

" 垂直分割屏幕
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" 插入模式下Emacs的快捷键映射
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>


if has('gui_running')
	"colo natalie
	set guifont=Monaco:h13"
	set guioptions-=rL          "去除滚动条
	"Toggle Menu and Toolbar
	set guioptions-=m
	set guioptions-=T
	set fuopt+=maxhorz
    set transparency=6      " 透明背景"
	map <D-1> 1gt
	map <D-2> 2gt
	map <D-3> 3gt
	map <D-4> 4gt
	map <D-5> 5gt
	map <D-6> 6gt
	map <D-7> 7gt
	map <D-8> 8gt
	map <D-9> 9gt
	map <D-0> :tablast<CR>
endif

" Nerd Tree 
let NERDTreeWinSize=30
"let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
"let NERDTreeShowBookmarks=1

" Ctrlp
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-cr>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-s>'],
    \ }
noremap <leader>b <Esc>:CtrlPBuffer<CR>
" Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }

"NeoComplCache 启动
"let g:neocomplcache_enable_at_startup = 1 

" Tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width=30

"toggle words
let g:toggle_words_dict = {'python': [['if', 'elif', 'else']]}


" Keybindings for plugins
map <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <leader>a :Ack 
nmap <leader>t :ToggleWord<CR>
nnoremap <F5> :GundoToggle<CR>
"<Leader>ig toggle vim-indent-guides
" '<c-y>,' for zencoding
