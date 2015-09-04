set go-=T
set go-=L
set go-=r
set lines=50
set columns=100
set guifont=Monaco:h14
set antialias
set transparency=15

" maximize screen
set lines=100 columns=400

if &background == "dark"
    "hi normal guibg=black
    set transparency=3
  endif

  let g:SimpylFold_docstring_preview = 1
  let g:SimpylFold_fold_docstring = 0

  autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
  autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

let g:vimrubocop_keymap = 0
let g:vimrubocop_config = './.rubocop.yml'
