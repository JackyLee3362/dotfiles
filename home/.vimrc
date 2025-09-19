" 设置在光标距离窗口顶部或底部一定行数时，开始滚动屏幕内容的行为
set scrolloff=5
set cursorline

"Vim 会在您输入搜索模式的过程中逐步匹配并高亮显示匹配的文本
set incsearch

" 禁用命令超时 / 禁用映射超时
set notimeout

"--在搜索时忽略大小写
set ignorecase

"--将搜索匹配的文本高亮显示
set hlsearch

" 设置显示行号(或者set nu) , 取消用set nonumber/nu!
set number
set relativenumber

" 剪贴板设置
set clipboard=unnamed

" 设置 s t 无用
noremap s <Nop>
noremap t <Nop>

" 推出 insert 模式
inoremap jj <ESC>

" 行间移动
noremap J <C-d>
noremap K <C-u>

" 行内移动
noremap H ^
" noremap L $ 取消 $
noremap L g_

" 重做
noremap R <C-r>

" 复制
noremap sp "0p

" 列选择模式
" noremap sv <C-v>
" leader

let mapleader = " "
map <leader>s <leader><leader>s

function! Hello()
  echo "Hello, Vim!"
endfunction
