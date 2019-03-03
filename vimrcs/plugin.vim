call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim' " 文件搜索
Plug 'terryma/vim-multiple-cursors' " 多光标编辑
Plug 'w0rp/ale' " 语法提示
Plug 'majutsushi/tagbar' " 函数列表
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter' " git 集成
Plug 'tpope/vim-surround' " 标签括号同时修改
Plug 'mattn/emmet-vim' " html快速编辑
Plug 'scrooloose/nerdcommenter' " 注释插件
Plug 'Valloric/YouCompleteMe' " 代码补全
Plug 'Raimondi/delimitMate' " 括号补全
Plug 'nathanaelkane/vim-indent-guides' " 缩进提示
Plug 'octol/vim-cpp-enhanced-highlight' " cpp语法高亮
Plug 'easymotion/vim-easymotion' " 快速移动
Plug 'sheerun/vim-polyglot' " 多种语言支持，高亮支持
Plug 'pangloss/vim-javascript' " js支持
Plug 'elzr/vim-json' " vimjson
Plug 'ludovicchabant/vim-gutentags' "  自动增量更新ctags，确定工作目录
Plug 'posva/vim-vue' " vue支持
" ========================
" mardown
" =======================
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' " markdown支持
Plug 'suan/vim-instant-markdown' " markdown实时显示 
" 插件列表结束
call plug#end()
