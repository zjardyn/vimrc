

" ____   ____.__                               _____.__        
" \   \ /   /|__| _____     ____  ____   _____/ ____\__| ____  
"  \   Y   / |  |/     \  _/ ___\/  _ \ /    \   __\|  |/ ___\ 
"   \     /  |  |  Y Y  \ \  \__(  <_> )   |  \  |  |  / /_/  >
"    \___/   |__|__|_|  /  \___  >____/|___|  /__|  |__\___  / 
"                     \/       \/           \/        /_____/  



syntax on " Syntax Highlighting
set nocp  " Make vim useful
set mouse=a " Allow scrolling
set noswapfile " No swap file

set tabstop=2 " Tab settings
set shiftwidth=2
set expandtab

set number " Line number settings
set relativenumber

set autochdir " Auto change directory when exploring
set wildmenu " Have autocomplete menu when : is opened 
set formatoptions-=cro " Do not continue comments
set timeoutlen=5
set ttimeoutlen=50

call plug#begin()

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'jalvesaq/Nvim-R'

call plug#end()

" Keybindings
" window navigation
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l
" Resize windows
map <silent><C-h> :vertical resize +5<CR>
map <silent><C-j> :resize +5<CR>
map <silent><C-k> :resize -5<CR>
map <silent><C-l> :vertical resize -5<CR>

" Manual indenting in visual mode
vnoremap > >gv
vnoremap < <gv
" Another way to exit insert mode
" inoremap jk <ESC>
" inoremap kj <ESC>
" Move lines around
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
" Buffer manipulation
map <silent>gn :bn<cr>
map <silent>gp :bp<cr>
map <silent>gd :bd<cr>

" use Alt as meta key (for linux users) 
for i in range(97,122)
  let c = nr2char(i)

  exec "map \e".c." <m-".c.">"
  exec "map! \e".c." <m-".c.">"
endfor

" R keybindings
map , :/ 

" Leader key
let mapleader = "\<Space>"
" Leader mappings
nnoremap <silent><leader>e :NERDTreeToggle<CR>
" Run scripts
nnoremap <silent><leader>p :!python3 % <CR>

" Colourscheme
" colorscheme molokai 
" colorscheme gruvbox
" if !exists('g:airline_symbols')
" let g:airline_symbols = {}
" endif
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

" Tips 
" 
" Go to next word under cursor
" g*
"
" Open file in new buffer 
" edit (or e) <filename>
" 
" Open file in new windows
" new <filename>
"
" Ctrl-X decrement
" Ctrl-A increment
"
" navigate between autocomplete args
" <C-j>

syntax on " Syntax Highlighting
set nocp  " Make vim useful
set mouse=a " Allow scrolling
set noswapfile " No swap file

set tabstop=2 " Tab settings
set shiftwidth=2
set expandtab

set number " Line number settings
set relativenumber

set autochdir " Auto change directory when exploring
set wildmenu " Have autocomplete menu when : is opened 
set formatoptions-=cro " Do not continue comments
set timeoutlen=5
set ttimeoutlen=50

call plug#begin()

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'jalvesaq/Nvim-R'

call plug#end()

" Keybindings
" window navigation
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l
" Resize windows
map <silent><C-h> :vertical resize +5<CR>
map <silent><C-j> :resize +5<CR>
map <silent><C-k> :resize -5<CR>
map <silent><C-l> :vertical resize -5<CR>

" Manual indenting in visual mode
vnoremap > >gv
vnoremap < <gv
" Another way to exit insert mode
" inoremap jk <ESC>
" inoremap kj <ESC>
" Move lines around
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
" Buffer manipulation
map <silent>gn :bn<cr>
map <silent>gp :bp<cr>
map <silent>gd :bd<cr>

" use Alt as meta key (for linux users) 
for i in range(97,122)
  let c = nr2char(i)

  exec "map \e".c." <m-".c.">"
  exec "map! \e".c." <m-".c.">"
endfor

" R keybindings
map , :/ 

" Leader key
let mapleader = "\<Space>"
" Leader mappings
nnoremap <silent><leader>e :NERDTreeToggle<CR>
" Run scripts
nnoremap <silent><leader>p :!python3 % <CR>

" Colourscheme
" colorscheme molokai 
" colorscheme gruvbox
" if !exists('g:airline_symbols')
" let g:airline_symbols = {}
" endif
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

" Tips 
" 
" Go to next word under cursor
" g*
"
" Open file in new buffer 
" edit (or e) <filename>
" 
" Open file in new windows
" new <filename>
"
" Ctrl-X decrement
" Ctrl-A increment
"
" navigate between autocomplete args
" <C-j>


syntax on " Syntax Highlighting
set nocp  " Make vim useful
set mouse=a " Allow scrolling
set noswapfile " No swap file

set tabstop=2 " Tab settings
set shiftwidth=2
set expandtab

set number " Line number settings
set relativenumber

set autochdir " Auto change directory when exploring
set wildmenu " Have autocomplete menu when : is opened 
set formatoptions-=cro " Do not continue comments
set timeoutlen=5
set ttimeoutlen=50

call plug#begin()

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'jalvesaq/Nvim-R'

call plug#end()

" Keybindings
" window navigation
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l
" Resize windows
map <silent><C-h> :vertical resize +5<CR>
map <silent><C-j> :resize +5<CR>
map <silent><C-k> :resize -5<CR>
map <silent><C-l> :vertical resize -5<CR>

" Manual indenting in visual mode
vnoremap > >gv
vnoremap < <gv
" Another way to exit insert mode
" inoremap jk <ESC>
" inoremap kj <ESC>
" Move lines around
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
" Buffer manipulation
map <silent>gn :bn<cr>
map <silent>gp :bp<cr>
map <silent>gd :bd<cr>

" use Alt as meta key (for linux users) 
for i in range(97,122)
  let c = nr2char(i)

  exec "map \e".c." <m-".c.">"
  exec "map! \e".c." <m-".c.">"
endfor

" R keybindings
map , :/ 

" Leader key
let mapleader = "\<Space>"
" Leader mappings
nnoremap <silent><leader>e :NERDTreeToggle<CR>
" Run scripts
nnoremap <silent><leader>p :!python3 % <CR>

" Colourscheme
" colorscheme molokai 
" colorscheme gruvbox
" if !exists('g:airline_symbols')
" let g:airline_symbols = {}
" endif
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

" Tips 
" 
" Go to next word under cursor
" g*
"
" Open file in new buffer 
" edit (or e) <filename>
" 
" Open file in new windows
" new <filename>
"
" Ctrl-X decrement
" Ctrl-A increment
"
" navigate between autocomplete args
" <C-j>
