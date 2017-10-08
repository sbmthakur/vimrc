set nocompatible
set title
set number
set relativenumber
set path+=**
set incsearch
set hlsearch
set expandtab
set tabstop=2
set dictionary=/usr/share/dict/words
set laststatus=2
set statusline=%t\ %m\ %r\ %y\ buffer:%n%=[%c,%l]%25(\ %)\ %p%%\ Lines:%L%5(\ %)
set complete=.,w,b,u
set autoindent
filetype plugin indent on 
runtime! ftplugin/man.vim
syntax on 

"Quickly switch to normal mode using `jk`. This will be removed once `xcape`
"is installed on all my systems.
imap jk <Esc>

inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-d> <Esc>:wq<CR>
nnoremap <C-d> :wq<CR>
inoremap <C-q> <Esc>:q!<CR>
nnoremap <C-q> :q!<CR>
nnoremap <F8> :noh<CR>
nnoremap <F9> :bd<CR>
inoremap <F8> <Esc>:noh<CR>a
inoremap <F9> <Esc>:bd<CR>
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

"""Bracket completion
inoremap { <C-r>=CompleteBracket('{')<C-m><Esc>i
inoremap [ <C-r>=CompleteBracket('[')<C-m><Esc>i
inoremap ( <C-r>=CompleteBracket('(')<C-m><Esc>i

nnoremap <S-l> gt<CR>
nnoremap <S-h> gT<CR>

function! CompleteBracket(leftBracket)
  if a:leftBracket == '{'
	return '{}'
  elseif a:leftBracket == '['
	return '[]'
  else
	return '()'
  endif
endfunction
"""

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

if &diff
    colorscheme diff
endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
"Thanks to https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %
