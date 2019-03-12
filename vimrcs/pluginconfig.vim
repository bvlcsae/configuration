" ================ NerdTree ==============
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F7> :NERDTreeToggle<cr>
autocmd vimenter * NERDTree  "自动开启Nerdtree
autocmd VimEnter * wincmd w
let g:NERDTreeWinSize = 30 " Nerdtree大小
let g:NERDTreeWinPos='right' " Nerdtree位置
let g:NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDChristmasTree=0
let NERDTreeChDirMode=2
" nerdcommenter
let NERDSpaceDelims=1
" " nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" NERDTREE-GIT
"" Special characters
let g:NERDTreeIndicatorMapCustom = { 
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
    \ }

let g:NERDTreeHidden=0     "不显示隐藏文件
" ===================================================

" ============ airline ======================
let g:airline_theme = 'bubblegum'
" let g:airline_powerline_fonts = 1
set ambiwidth=double
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
" show absolute file path in status line
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" show tab number in tab line
let g:airline#extensions#tabline#tab_nr_type = 1
" ================================================

" ====================== tagbar ====================
map <silent> <F8> :TagbarToggle<CR>
let g:tagbar_left = 1 
let g:tagbar_sort = 0 "设置标签不排序，默认排序
let g:tagbar_width = 30  "设置tagbar的宽度为30列，默认40
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_autofocus = 1 " 这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
" =================================================

"======================= YCM设置 =====================
let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口

let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	" force recomile with syntastic
inoremap <leader><leader> <C-x><C-o> " 文件路径补全功能
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
let g:ycm_semantic_triggers =  {
		\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
		\ 'cs,lua,javascript': ['re!\w{2}'],
		\ }

let g:ycm_key_invoke_completion = '<c-z>'
" ===================================================

" ==================== ALE =========================
let g:ale_sign_column_always = 1 " 保持侧边栏可见
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
""显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
""<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_javascript_eslint_executable = ''
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pylint'],
            \   'javascript': []
            \}


" =================================================
" vim-indent-guides
" ================================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=black


" ====================================================
" delimitMate 括号补全
" ===================================================
" for python docstring ", 特别有用
autocmd FileType vue let b:delimitMate_autoclose = 1
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
au FileType mail let b:delimitMate_autoclose = 0
let delimitMate_matchpairs = "(:),[:],{:},<:>"
imap 'w <Plug>delimitMateS-Tab


" ===================================================
" vim-javascript
" ==================================================
let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" =================================================
" ctags config
" ================================================
set tags=./.tags;,.tags
 
" ==================================================
" vim-gutentags 
" ================================================
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
"
" " 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
" " 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" =====================================================
" emmet-vim  HTML标签快速编辑
" ===================================================
let g:user_emmet_leader_key='<C-e>'


let g:html_exclude_tags = ['html', 'style', 'script', 'body']
let g:html_indent_inctags = "body,head,tbody,div" 	" 缩进body head

" ==========================================
" vim-vue
" ==========================================
let g:vue_disable_pre_processors=1


"  to use nerdcommenter with vue files, you can use its "hooks" feature to temporarily change the filetype. click for an example.
let g:nERDCustomDelimiters = {
            \  'javascript.jsx': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
            \  'sass.scss': { 'left': '/**', 'right': '*/' }
        \ }
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
" Add your own custom formats or override the defaults

" ===========================
" mxw/vim-jsx jsx支持
" ==========================
let g:jsx_ext_required = 0
let g:jsx_pragma_required=0


" =========================
" ag.vim
" ========================
map ;F :Ag<space>



" =============================
" plasticboy/vim-markdown
" ============================
" let g:vim_markdown_no_default_key_mappings = 1
" let g:vim_markdown_toc_autofit = 1
