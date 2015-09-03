" avoiding problems with macvim and zsh
set shell=/bin/bash

" load pathogen stuff
call pathogen#infect()
"call pathogen#helptags()

" general config
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.obj,*.swp,*~,#*#
set visualbell
set cursorline
set ttyfast
set ruler
set linespace=2
set backspace=indent,eol,start
set laststatus=2
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set completeopt=longest,menuone
filetype plugin indent on
syntax on

" terminal colors
set t_Co=256

" indentation
set ts=4
set sw=2
set sts=2
set expandtab
set autoindent

" white space blamer
set list
set listchars=tab:\ ¬,trail:.

" nice statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %{fugitive#statusline()}

" enabling mouse
set mouse=a

" interface stuff
set number
colorscheme xc_inspired

" mappings
map <C-J> <C-w>j<C-w>_
map <C-K> <C-w>k<C-w>_
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <F3> :NERDTreeToggle<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>a :Ack<space>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>w <C-w><C-v>
let g:sparkupExecuteMapping='<D-e>'
nmap ; :

" fuzzyfinder
let g:fuf_coveragefile_globPatterns=['**/*.h', '**/*.c', '**/*.rb', '**/*.js', '**/*.erb', '**/*.haml', '**/*.html', '**/*.rake', '**/*.css', '**/*.yml']
nmap <C-f> :FufCoverageFile<cr>
nmap <C-f> <C-o>:FufCoverageFile<cr>

" macvim config
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif

set guifont=Inconsolata-g:h14
colorscheme vibrantink
"let g:nerdtree_tabs_open_on_console_startup=1

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

autocmd BufWinEnter *.rb setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.rb setlocal foldexpr< foldmethod<

let g:vimrubocop_keymap = 0
let g:vimrubocop_config = './.rubocop.yml'

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
