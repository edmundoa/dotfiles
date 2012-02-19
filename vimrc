" Use vim settings instead of vi
set nocompatible

" Enable syntax highlighting
syntax on

" Enable auto indent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Other options
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
