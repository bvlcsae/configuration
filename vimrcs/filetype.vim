" Enable filetype plugins
filetype off
filetype plugin on
filetype indent on

autocmd FileType ruby setlocal expandtab smarttab shiftwidth=2 softtabstop=2
autocmd FileType javascript.jsx setlocal expandtab smarttab shiftwidth=2 softtabstop=2
" config for vue
autocmd FileType vue setlocal expandtab smarttab shiftwidth=2 softtabstop=2
au FileType vue syntax sync fromstart

" au FileType *.jsx setlocal expandtab smarttab shiftwidth=2 softtabstop=2

