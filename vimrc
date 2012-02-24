" Use vim settings instead of vi
set nocompatible

" Enable syntax highlighting
syntax on

" Set colors
set t_Co=256
highlight LineNr ctermfg=white
highlight LineNr ctermbg=

" Use 2 spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Improve search
set ignorecase
set smartcase

" Avoid creation of backups
set nobackup
set noswapfile

" Other options
set number
set whichwrap+=>
set whichwrap+=<
set browsedir=current
set nowrap
set hidden
set nostartofline
set history=5000
set backspace=indent,eol,start
set ruler
set nomodeline

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
endif
