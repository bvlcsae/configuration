" ========================
" All Mode
" ========================


" ========================
" Normal Mode
" ========================
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p


" ========================
" Insert Mode
" ========================
" esc in insert mode
inoremap kj <esc>

" Map auto complete
inoremap '1 ()<esc>i
inoremap '2 []<esc>i
inoremap '3 {}<esc>i
inoremap '4 {<esc>o}<esc>O
inoremap 'q ''<esc>i
inoremap 'e ""<esc>i

" special enter can be used in html indent
inoremap 'c <cr><tab><cr><up><tab>
" File path tip
inoremap <leader>f <C-x><C-f>


" ========================
" Visual Mode
" ========================
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y


