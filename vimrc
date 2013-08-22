" Use vim settings instead of vi
set nocompatible

" Load pathogen infect
execute pathogen#infect()
Helptags

" Enable syntax highlighting
syntax on
set background=dark
colorscheme solarized

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

" vim-airline config
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='simple'
let g:airline_enable_syntastic=0
let g:airline_powerline_fonts=0

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

" Open Nerdtree function (In dir of opened file)
function! OpenNERDTree()
  execute ":NERDTree %"
endfunction
command! -nargs=0 OpenNERDTree :call OpenNERDTree()

" Toggle paste mode
set pastetoggle=<Leader>p

" Build PDF file from LaTeX
command! Latex2pdf execute "!latexmk -pdf %"

" Execute command and get the output on a new window
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Mappings for CtrlP
nmap ,t :CtrlP<CR>
nmap ,h :CtrlPCurFile<CR>
nmap ,m :CtrlPMRUFiles<CR>
nmap ,r :CtrlPClearCache<CR>

" Open NERDTree with ,t
nmap ,n :OpenNERDTree<CR>

" Relative line numbering quick keys.
nmap ,l :RN<CR>

" Paste the previous content stored in the buffer
nmap ,pp "0p

" Clear search highlight
nmap ,/ :nohlsearch<CR>

" Mapping to open file under cursor
nmap ,o  gf<CR>
nmap ,ov :vertical wincmd f<CR>
nmap ,ot :wincmd gf<CR>

" Mappings to align code
vmap <Leader>ae :Tabularize /=<CR>
vmap <Leader>aa :Tabularize /=><CR>
