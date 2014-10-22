runtime bundle_github/pathogen/autoload/pathogen.vim
call pathogen#infect('bundle_github/{}')

set history=200
set number
filetype indent on
filetype plugin on
set nocompatible
syntax on
set shiftwidth=2
set tabstop=4
autocmd FileType javascript setlocal tabstop=4 shiftwidth=4
set expandtab
set hidden
" set hlsearch
set ruler
set nostartofline
set laststatus=2
" set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set showmatch
set autoread
set encoding=utf8
set ffs=unix,dos,mac
set nrformats=
set guifont=Consolas:h18
syntax enable
set background=dark
if has('gui_running')
  set lines=40 columns=135
  colorscheme solarized 
endif

set backup
set backupdir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set writebackup

nnoremap <C-L> :nohl<CR><C-L>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

command! CD cd %:p:h
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ctrlp_map = '<c-p>'

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

let hostfile = $HOME . '/.vimrc-' . substitute(hostname(), "\\..*", "", "")
if filereadable(hostfile)
  exe 'source ' . hostfile
endif
