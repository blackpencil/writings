set background=dark
if has("syntax")
  syntax on
endif



set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
filetype on
set smartindent
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P>
set nu
set ruler
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype plugin on
let g:vim_markdown_folding_disabled=1
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F2> :call ToggleFocusMode()<cr>
