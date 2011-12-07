" Set theme                                                                                                            
let g:zenburn_high_Contrast=1
set t_Co=256
colorscheme zenburn

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
autocmd InsertEnter * highlight  CursorLine cterm=bold ctermbg=None ctermfg=None
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine cterm=underline ctermbg=None ctermfg=None

" Set to auto read when a file is changed from the outside
set autoread

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set cindent
set smartindent
set autoindent
set pastetoggle=<F5>
set nu

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

" Autocomplete filenames to the longest possible rather than a complete filename
set wildmode=longest:full
set wildmenu

map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F2> :w<CR>
map <F3> :e 
map `<F3> :tabe 
map tc :tabclose<CR>
map q :q<CR>

" Highlight long lights
if exists('+colorcolumn') " Check if this vim version has colorcolumn property
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)                                                   
endif


" NERD Comment plugin
filetype plugin on

" NERD Tree plugin
map <F4> :NERDTreeToggle<CR>
