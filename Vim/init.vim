"----------------------------------
" Plugins
"----------------------------------
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
" airline is nicer |  Plug 'itchyny/lightline.vim'

" does not work | Plug 'tpope/vim-fugitive'

" missing python | Plug 'OmniSharp/omnisharp-vim'
call plug#end()

"----------------------------------
" Settings
"----------------------------------
color onedark
set title " show file and location in title bar
set number " show line number
set cursorline " highlight current line
set showmatch " highlight matching [{()}]
set clipboard+=unnamed " use the clipboard of vim and win
set paste " paste from win or vim 
set undofile " preserve undo for next time
set ignorecase " case insensitive for searches
set smartcase " case insensitive for searches

" NERDTree settings ---------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"----------------------------------
" Mappings
"----------------------------------
