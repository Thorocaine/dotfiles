set ttyfast
set showmode
set showcmd
set title
set number
set hidden" This is what files look like
set ffs=unix,dos,mac" Update find path to search subdirectories
set path=$PWD/**" No backups
set nobackup
set nowritebackup
set nowb
set noswapfile" Keep lots of history/undo
set undolevels=1000" Files to ignore
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:clipboard={
	\   'name': 'myClipboard',
        \   'copy': {
        \      '+': 'tmux load-buffer -',
        \      '*': 'tmux load-buffer -',
        \    },
        \   'paste': {
        \      '+': 'tmux save-buffer -',
        \      '*': 'tmux save-buffer -',
        \   },
	\   'cache_enabled': 1,
	\ }
set clipboard+=unnamedplus

call plug#begin()
Plug 'freitass/todo.txt-vim'
"Plug 'DougBeney/vim-reddit'
Plug 'twitvim/twitvim'
Plug 'tpope/start'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
call plug#end()

"augroup ProjectDrawer
"	autocmd!
"	autocmd VimEnter * :Vexplore
"augroup END
"

set t_Co=256 
colorscheme slate 
set colorcolumn=80,100
highlight ColorColumn ctermbg=238 "guigb=23272

" Tab sanity
" set expandtab
set tabstop=2
set shiftwidth=4" Show hidden characters, tabs, trailing whitespace
set list
set listchars=tab:→\ ,trail:·,nbsp:·" Different tab/space stops"
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType make setlocal noexpandtab
