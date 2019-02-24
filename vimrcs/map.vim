" ========================
" All Mode
" ========================
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
map 0 ^

" select all
map <Leader>sa ggVG


" ========================
" Normal Mode
" ========================
" select block
nnoremap <leader>v V`}
nnoremap <leader>V V`{

" 设置快捷键将系统剪贴板内容粘贴至 vim
noremap <leader>p "+p
" Go to home and end using capitalized directions
noremap H ^
noremap L $
" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" 滚动Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" 交换 ' `, 使得可以快速使用'跳到marked位置
nnoremap ' `
nnoremap ` '

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" Map ; to : and save a million keystrokes 用于快速进入命令行
nnoremap ; :

"se swap之后，同物理行上线直接跳
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j


" ========================
" Insert Mode
" ========================
" Map auto complete
inoremap '1 ()<esc>i
inoremap '2 []<esc>i
inoremap '3 {}<esc>i

inoremap '4 {<esc>o}<esc>O

" my custom
" special enter can be used in html indent
inoremap 'c <cr><tab><cr><up><tab>

" File path tip
inoremap <leader>f <C-x><C-f>

" leave insert
inoremap kj <esc>

" ( [ { <> + - * =
imap 'e (
imap 'q [
imap 'r {
imap 't <
inoremap 's =
inoremap 'a +
inoremap 'd -
inoremap 'f *

" & | < >
inoremap 'z &
inoremap 'x \|
inoremap 'c <
inoremap 'b >


" ========================
" Visual Mode
" ========================
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv


" ========================
" Command Mode
" ========================
" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
