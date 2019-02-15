" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p

" 光标成对出现
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

" 光标成对删除
function! ParenDelete()
  let line = getline('.')
  let prev_char = line[col('.')-1]

  if index(["(", "[", "{"], prev_char)!= -1 && match(line,'^\s*)',col('.')) != -1
    " 使用 cf) 代替df)使光标离开normal时左移一格用以a
    normal! cf)
  else
    execute "normal! a\<BS>"
  end
endfunction

inoremap <BS> <ESC>:call ParenDelete()<CR>a
