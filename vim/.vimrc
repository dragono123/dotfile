set nocompatible  	" This is vim, this is superior
filetype off 		" required for vundle !


" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle managed Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'valloric/youcompleteme'
Plugin 'tomtom/tcomment_vim'

" For snippets
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'jiangmiao/auto-pairs'

" airlines
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'powerline/powerline'
Plugin 'powerline/fonts' 

" theme
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable


set mouse=a
" Folding
let anyfold_activate=1
set foldlevel=0
let anyfold_fold_comments=1


" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs<Paste>
set hidden


" show respective brackets when indicator is over them
set showmatch

" self explained
set number
set relativenumber

set splitright


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

colorscheme gruvbox


" Toggle fold at current position.
nnoremap <Tab> za


let g:airline_powerline_fonts = 1

set updatetime=500

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Set to auto read when a file is changed from the outside
set autoread

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" Fast saving
nmap ,w :w!<cr>

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="²"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" nerdTree
autocmd vimenter * NERDTree | execute "normal \<C-W>l"

let g:airline_theme='angr'

nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap ) )zz
nmap ( (zz

" Terminal Stuff
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" transparency
hi Normal ctermbg=none guibg=none
hi CursorLineNR guibg=NONE ctermbg=NONE

noremap <C-t> :call mappings#transparency#Toggle_transparent()<CR>
let g:is_transparent=1
