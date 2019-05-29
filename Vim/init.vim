"----------------------------------
" Plugins
"----------------------------------
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
" Plug 'OmniSharp/omnisharp-vim'
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
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set smartindent
set nobackup " no backup
set nowb " no backup - no writebackup
set noswapfile " no backup - swapfile
set omnifunc=syntaxcomplete#Complete
set guifont=Consolas:h10:cANSI
set wildmenu
set wildmode=longest:full,full
" let g:OmniSharp_server_stdio = 1

" NERDTree settings ---------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " autoquit if only nerdtree is open

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Syntastic -----------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"----------------------------------
" Mappings
"---------------------------------
map <C-b> :NERDTreeToggle<CR>
