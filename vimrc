" Use vim settings instead of vi
set nocompatible

" Load pathogen infect
call pathogen#infect()

" Enable syntax highlighting
syntax on
colorscheme railscasts
filetype plugin indent on

" Set colors
set t_Co=256
highlight LineNr ctermfg=darkgrey
"highlight LineNr ctermbg=lightgrey
set cursorline

" Use 2 spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Improve search
set ignorecase
set smartcase
set hlsearch

" Avoid creation of backups
set nobackup
set noswapfile

" Print hidden characters
set list
set lcs=eol:¬
set lcs=tab:»»

" Show available command options when tab is pressed
set wildmode=longest,list

" Other options
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
function OpenNERDTree()
  execute ":NERDTree %"
endfunction

" Open NERDTree with <ESC>+t
command -nargs=0 OpenNERDTree :call OpenNERDTree()
nmap <ESC>t :OpenNERDTree<CR>

" Toggle relative line numbering
function ToggleRltvNmbr()
  if(b:rltvnmbrmode == 1)
    execute ":RltvNmbr!"
  else
    execute ":RltvNmbr"
  endif
endfunction

" Relative line numbering quick keys.
command -nargs=0 ToggleRltvNmbr :call ToggleRltvNmbr()
nmap <ESC>l :ToggleRltvNmbr<CR>
