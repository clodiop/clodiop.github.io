:set t_Co=300
:set nowrap
:set ignorecase
:set smartcase
:set tabstop=4
:set shiftwidth=4
:set hlsearch
:set expandtab
syntax off
syntax clear
highlight clear

let mapleader = " "

set nomodeline

set incsearch


"smart wrapping
":set wrap linebreak nolist
"backup settings
set backup

set undodir=C:\TEMP\
set directory=C:\TEMP\
set backupdir=C:\TEMP\
set backupskip+=~/_vimrc

highlight Cursor guibg=#64af58

:set cursorline
highlight CursorLine cterm=NOne guibg=#E8EBED ctermbg=254
highlight Visual ctermfg=NONE ctermbg=darkgrey guifg=NONE guibg=#929292



set formatoptions-=cro
set undofile

autocmd Filetype python set cursorcolumn

" SHIFT + D to delete a line without saving it.
nnoremap <silent> <S-D> :normal! "_dd <CR>
nnoremap o o<Esc> " new line under where cursur is 
:nmap <C-Left> b 
:nmap <C-Right> w
nmap <f2> :set number! number?<cr>
nnoremap <leader>nh :noh<CR>
nnoremap <leader>t :term<CR>
nmap <F6> :NERDTreeToggle<CR>

" These two clipboard functions only yank and put to primary X11 clipboard
" yank too system clipboard
nnoremap <leader>y "*y
"Put from system clipboard
nnoremap <leader>p "*p

noremap <C-down> : call SpeakLine()<CR>
let g:espeaker_use_dispatcher=0
let g:espeaker_synthesizer='espeak'
let g:espeaker_speed=100
let g:espeaker_punct='$''@#!.[\"]{}/()\\<>~,:;+-*\`%^&'
let g:espeaker_voice='en-us+f3'
let g:espeaker_volume=10

"notes shit
ab xgt ✅
nnoremap <leader>xdt :put=strftime('@@%Y-%m-%d')<CR>
inoremap xnt >>>>><CR><Tab><Tab><C-R>=strftime('@@%Y-%m-%d %H:%M:%S')<CR>newnote
inoremap xtodo <C-R>=strftime('@@%Y-%m-%d %H:%M:%S')<CR>todo-
syntax enable
" Customize highlight groups with bold and no colors
highlight Comment        guifg=NONE cterm=italic ctermfg=NONE ctermbg=NONE
highlight Constant       guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight String         guifg=NONE cterm=underline ctermfg=NONE ctermbg=NONE
highlight Character      guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Number         guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Boolean        guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Statement      guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Conditional    guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Repeat         guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Label          guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Operator       guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Keyword        guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Type           guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Function       guifg=NONE cterm=reverse ctermfg=NONE ctermbg=NONE
highlight Identifier     guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight Error          guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight WarningMsg     guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight ErrorMsg       guifg=NONE cterm=bold ctermfg=NONE ctermbg=NONE



"install vimplug
"Should work on not using plugins to  be honest
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/nathanaelkane/vim-indent-guides'

Plug 'https://github.com/machakann/vim-highlightedyank'

Plug 'scrooloose/nerdtree'

Plug 'redahe/vim-espeaker'
call plug#end()
