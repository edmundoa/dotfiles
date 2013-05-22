" Use vim settings instead of vi
set nocompatible

" Load pathogen infect
call pathogen#infect()
Helptags

" Enable syntax highlighting
syntax on
colorscheme Tomorrow-Night

if exists("&colorcolumn")
  set colorcolumn=80
endif

" Enable filetype detection if it's supported
if has("autocmd")
  filetype on
  filetype plugin indent on

  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType play2-html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufNewFile,BufRead *.less set filetype=less.css
endif

" GUI tweaks
if has("gui_running")
  set guioptions=t "hide MacVim toolbar
endif

" Statusline tricks
set laststatus=2
set noru
set noshowmode

" Change split behavior
set splitright
set splitbelow

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

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Open Nerdtree function (In dir of opened file)
function! OpenNERDTree()
  execute ":NERDTree %"
endfunction

" Open NERDTree with ,t
command! -nargs=0 OpenNERDTree :call OpenNERDTree()
nmap ,n :OpenNERDTree<CR>

" Mappings for CtrlP
nmap ,t :CtrlP<CR>
nmap ,h :CtrlPCurFile<CR>
nmap ,r :CtrlPMRUFiles<CR>

" Relative line numbering quick keys.
nmap ,l :RN<CR>

" Paste the previous content stored in the buffer
nmap ,pp "0p

" Toggle paste mode
set pastetoggle=<Leader>p

" Clear search highlight
nmap ,/ :nohlsearch<CR>

" Build PDF file from LaTeX
command! Latex2pdf execute "!latexmk -pdf %"
