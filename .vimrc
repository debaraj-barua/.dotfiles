set encoding=utf-8                      " encoding
syntax enable                           " enable syntax processing

" Tab and indentation
set tabstop=2       	                " number of visual spaces per TAB
set softtabstop=2   	                " number of spaces in tab when editing
set expandtab       	                " tabs are spaces
autocmd FileType make set noexpandtab   " do not convert tabs to spaces in make files

" UI
colorscheme torte
set number                              " show line numbers
set colorcolumn=80                      " set line length to 80
set cursorline                          " highlight current line
set wildmenu                            " visual autocomplete for command menu
set showmatch                           " highlight matching [{()}]
set laststatus=2                        " show the status bar
set showcmd                             " ?
set showmode                            " ?

" Search
set incsearch                           " search as characters are entered
set hlsearch                            " highlight matches	

" Mouse
set mouse=a

" Folding
" set foldenable                        " enable folding
" set foldlevelstart=10                 " open most folds by default
" set foldnestmax=10                    " 10 nested fold max
" set foldmethod=marker                 " fold based on indent level

" REMAPPINGS
" -----------------------------------------------------------------------------

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

" space open/closes folds
" nnoremap <space> za
