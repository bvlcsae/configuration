" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p

" Map auto complete
inoremap '1 ()<esc>i
inoremap '2 []<esc>i
inoremap '3 {}<esc>i
inoremap '4 {<esc>o}<esc>O
inoremap 'q ''<esc>i
inoremap 'e ""<esc>i

inoremap <leader>f <C-x><C-f>
