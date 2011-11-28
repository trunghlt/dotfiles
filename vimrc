" Set theme                                                                                                            
" colorscheme rdark

" set ls=2 " always show status line
set scrolloff=3     " keep 3 lines when scrolling
set ignorecase      " ignore case when searching 
set title           " show title in console title bar
set ttyfast         " smoother changesv
set wrap

set cursorline
" Default Colors for CursorLine
highlight  CursorLine cterm=underline ctermbg=None ctermfg=None
" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine cterm=bold ctermbg=darkgray ctermfg=None
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine cterm=underline ctermbg=None ctermfg=None

" Set to auto read when a file is changed from the outside
set autoread

set tabstop=4
set expandtab
set cindent
set smartindent
set autoindent
set pastetoggle=<F2>
set nu!

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ruler " Always show current position
set incsearch " Instant move while searching
set hlsearch "Highlight search things
set magic "Set magic on, for regular expressions
set mat=2 "How many tenths of a second to blink

set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15

map <F7> :tabp<CR>
map <F8> :tabn<CR>

match ErrorMsg '\%>79v.\+'
