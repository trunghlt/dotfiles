" Set theme                                                                                                            
" let g:zenburn_high_Contrast=1
set t_Co=256
colorscheme zenburn

" set ls=2 " always show status line
set scrolloff=3     " keep 3 lines when scrolling
set ignorecase      " ignore case when searching 
set title           " show title in console title bar
set ttyfast         " smoother changesv
" set wrap

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
set backspace=indent,eol,start
" Set auto text wrapping
" set tw=79

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
set mouse=a

" Autocomplete filenames to the longest possible rather than a complete filename
set wildmode=longest:full
set wildmenu

map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <C-e> :q<CR>
map <F2> :w<CR>
map <F3> :e 
map `<F3> :tabe 
map tc :tabclose<CR>
map <C-s> <F2>

" Window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

""" Insert mode only
imap jj <Esc>j
" Ctrl-space to toggle insert mode
nnoremap <C-space> a
imap <C-space> <Esc>
imap <C-s> <C-[>:w<CR>i
" F2 to save
imap <F2> <C-[>:w<CR>i
imap <F7> <C-[>:tabp<CR>
imap <F8> <C-[>:tabn<CR>

" Traversing cursor in insert mode
"inoremap <C-b> <C-o>h
"inoremap <C-n> <C-o>j
"inoremap <C-p> <C-o>k
"inoremap <C-f> <C-o>l
"inoremap <C-a> <C-o>^
"inoremap <C-e> <C-o>$

" Highlight long lights
if exists('+colorcolumn') " Check if this vim version has colorcolumn property
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)                                                   
endif


" NERD Comment plugin
filetype plugin on

" Enable Pylint check
autocmd FileType python compiler pylint
" Disable calling pylint on saving
let g:pylint_onwrite = 0
" Disable highlighted lines
let g:pylint_inline_highlight = 0


" NERD Tree plugin
map <F4> :NERDTreeToggle<CR>
imap  <F4> <C-[>:NERDTreeToggle<CR>

"Copy and paste between different Vim sessions
"Ctrl+Y to yank and Ctrl+P to paste
nmap <C-y> :!echo ""> ~/.vi_tmp<CR><CR>:w! ~/.vi_tmp<CR>
vmap <C-y> :w! ~/.vi_tmp<CR>
nmap <C-x> :r ~/.vi_tmp<CR>

execute pathogen#infect()
syntax on
filetype plugin indent on
