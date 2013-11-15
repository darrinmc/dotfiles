execute pathogen#infect()
set number
filetype indent on
syntax on
set shiftwidth=2
set tabstop=4
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
colorscheme vividchalk

nnoremap <C-L> :nohl<CR><C-L>

command! CD cd %:p:h
let g:ackprg = 'ag --nogroup --nocolor --column'

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
