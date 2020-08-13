set nocompatible

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set encoding=utf-8                      " encoding
syntax enable                           " enable syntax processing

" Tab and indentation
set tabstop=2                         " number of visual spaces per TAB
set softtabstop=2                     " number of spaces in tab when editing
set expandtab                         " tabs are spaces
autocmd FileType make set noexpandtab   " do not convert tabs to spaces in make files

" UI
colorscheme default
set number                              " show line numbers
set colorcolumn=80                      " set line length to 80
set cursorline                          " highlight current line
set wildmenu                            " visual autocomplete for command menu
set showmatch                           " highlight matching [{()}]
set showcmd                             " ?
set showmode                            " ?

" Search
set incsearch                           " search as characters are entered
set hlsearch                            " highlight matches 

" Mouse
set mouse=a

" Folding
set foldenable                        " enable folding
set foldlevelstart=10                 " open most folds by default
set foldnestmax=10                    " 10 nested fold max
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

" Bind every resize splits to Ctrl+ [key] instead of Ctrl+w+[key]
" Easier use of splits
nnoremap <C> < <C-w> <

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.

vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"  ============================================================================
"  https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" FILE BROWSING:
" Tweaks for browsing

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=2  " open in vertical split
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
" let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"

" source customized statusline
filetype plugin on
source ~/.dotfiles/vimrc/statusline.vim

