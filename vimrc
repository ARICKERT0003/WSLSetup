" Helps force plugins to load correctly when it is turned back on below
filetype off

" Put all swap files in .swap
set backupdir=~/.vim/backup/,~/.vim/temp/
set directory=~/.vim/swap/

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Sounds
set visualbell
set t_vb=
set noerrorbells

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Visual Block Mode
nnoremap <F2> <C-V>

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Tags
set tags=tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Custom Mapping
map <S-Enter> o<ESC> 

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set background=dark
if has('termguicolors')
  set termguicolors
endif

"packadd! everforest
"colorscheme everforest
"let g:everforest_background = 'hard'

packadd! gruvbox-material
colorscheme gruvbox-material
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
