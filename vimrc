
"enable syntax highlighting
syntax on

"colorscheme
colorscheme desert

"insert mode map jk kj JK KJ to escape! 
imap jk <ESC>
imap kj <ESC>
imap KJ <ESC>
imap JK <ESC>

"ignore case when searching except when using capital letters
set ignorecase
set smartcase 

"enable line numbers
set number

"set that ruler
set ruler

"set autoindent
set autoindent

"set tab to 2 spaces
set shiftwidth=2
set softtabstop=2
set expandtab

"enable filetype plugins
filetype plugin indent on

"set some magic for those regular expressions
set magic

"show matching brackets
set showmatch

"disable annoying sounds 
set noerrorbells
set novisualbell

"add an extrabit of margin to the left
"set foldcolumn=1

"enable 256 colors palette in the gnome terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"set a colorscheme
"colorscheme desert

"set that background to dark
set background=dark

"turn backup off,
"set nobackup
"set nob
"set noswapfile

"set max number of tabs
set tabpagemax=30

"pathogen
execute pathogen#infect()
"open nerdtree when vim starts
"autocmd vimenter * NERDTree
"toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
"close vim if only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

