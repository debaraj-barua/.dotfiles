" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

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
set foldenable                        " enable folding
" set foldlevelstart=10                 " open most folds by default
" set foldnestmax=10                    " 10 nested fold max
set foldmethod=indent                 " fold based on indent level

" space open/closes folds
nnoremap <space> za

" REMAPPINGS
" -----------------------------------------------------------------------------

" unhighlight search results
nnoremap <leader><space> :nohlsearch<CR> 



" Splits:
" specify different areas of the screen where the splits should occur
set splitbelow
set splitright

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.

vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
