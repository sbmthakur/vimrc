set nocompatible
set title
set number
set relativenumber
set path+=**
set incsearch
set hlsearch
set tabstop=4
set dictionary=/usr/share/dict/words
set laststatus=2
set statusline=%t\ %m\ %r\ %y\ buffer:%n%=[%c,%l]%25(\ %)\ %p%%\ Lines:%L%5(\ %)
syntax on 

imap jk <Esc>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-d> <Esc>:wq<CR>
nnoremap <C-d> :wq<CR>
inoremap <C-q> <Esc>:q!<CR>
nnoremap <C-q> :q!<CR>
nnoremap <F8> :noh<CR>
"Shift the current line down(insert mode). Equivalent to sublime's Ctrl-Shift-down
inoremap <C-j> <Esc>ddpi
"Shift the current line up(insert mode). Equivalent to sublime's Ctrl-Shift-up
inoremap <C-k> <Esc>ddkPi

"Shift the current line down(normal mode). Equivalent to sublime's Ctrl-Shift-down
nnoremap <C-j> ddp
"Shift the current line up(normal mode). Equivalent to sublime's Ctrl-Shift-up
nnoremap <C-k> ddkP

"remove relative number when entering insert mode
autocmd InsertEnter * :set norelativenumber
"set relative number when leaving insert mode
autocmd InsertLeave * :set relativenumber

"auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

"For removing relative number in normal mode
function! ToggleNumber()
 if(&relativenumber == 1)
	set norelativenumber
 else 
	set relativenumber
 endif
endfunc

nnoremap <C-n> :call ToggleNumber()<cr>

"set colors
colors shubham
