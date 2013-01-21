" Use vim settings instead of vi
set nocompatible

" Load pathogen infect
call pathogen#infect()

" Enable syntax highlighting
syntax on
colorscheme Tomorrow-Night

" Enable filetype detection if it's supported
if has("autocmd")
  filetype on
  filetype plugin indent on

  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
endif

" GUI tweaks
if has("gui_running")
  set guioptions=t "hide MacVim toolbar
endif

" Statusline tricks
set laststatus=2
set noru
set noshowmode

" Set colors
set t_Co=256
highlight LineNr ctermfg=darkgrey
set cursorline
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey

" Use 2 spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Improve search
set ignorecase
set smartcase
set hlsearch

" Backup and swap options
set nobackup
set writebackup
set swapfile

" Print hidden characters
set list
set lcs=tab:»»,eol:¬

" Show available command options when tab is pressed
set wildmode=longest,list

" Other options
set enc=utf-8
set number
set whichwrap+=>
set whichwrap+=<
set browsedir=current
set wrap
set hidden
set nostartofline
set history=5000
set backspace=indent,eol,start
set ruler
set nomodeline
set scrolloff=3


" Open Nerdtree function (In dir of opened file)
function! OpenNERDTree()
  execute ":NERDTree %"
endfunction

" Open NERDTree with <ESC>+t
command! -nargs=0 OpenNERDTree :call OpenNERDTree()
nmap <ESC>t :OpenNERDTree<CR>

" Relative line numbering quick keys.
nmap <ESC>l :RN<CR>

" Paste the previous content stored in the buffer
nmap <ESC>p "0p

" Clear search highlight
nmap <ESC>/ :nohlsearch<CR>

" Build PDF file from LaTeX
command! Latex2pdf execute "!latexmk -pdf %"
