" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <leader>q :q<cr>
" 定义快捷键保存当前窗口内容
nmap <leader>w :w<cr>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <leader>wq :wa<cr>:q<cr>
" 不做任何保存，直接退出 vim
nmap <leader>qq :qa!<cr>
" 依次遍历子窗口
nnoremap nw <c-w><c-w>
" 跳转至右方的窗口
nnoremap <leader>lw <c-w>l
" 跳转至左方的窗口
nnoremap <leader>hw <c-w>h
" 跳转至上方的子窗口
nnoremap <leader>kw <c-w>k
" 跳转至下方的子窗口
nnoremap <leader>jw <c-w>j
" 定义快捷键在结对符之间跳转
nmap <leader>m %
