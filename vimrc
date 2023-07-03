"You know what improves productivity in vim? Mastering motions and operators..." - Random Hacker News comment
set sessionoptions-=options
"set shiftwidth=4 -- Set indentation to 2, useful for javascript 
set autoindent expandtab tabstop=2 shiftwidth=2
set nocompatible
set title
set number
set relativenumber
set path+=**
set incsearch
set hlsearch
set expandtab
set tabstop=4
set dictionary=/usr/share/dict/words
set laststatus=2
set statusline=%t\ %m\ %r\ %y\ buffer:%n%=[%c,%l]%25(\ %)\ %p%%\ Lines:%L%5(\ %)
set complete=.,w,b,u
set autoindent
set noautochdir
set nofixendofline
set ignorecase
set smartcase
filetype off
syntax on 
filetype plugin indent on 
runtime! ftplugin/man.vim

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

nnoremap ZA :qa<CR> 

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
colorscheme habamax

if &diff
        colorscheme diff
endif

nmap j gj
nmap k gk

cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>

nnoremap <C-t> :Texplore<CR>

" Toggle smartcase and ignorecase with <Leader>s. By default both are switched
" on. This will help in substitutions and variable search.
map \s :set smartcase!<CR>:set ignorecase!<CR>:set smartcase?<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
"Thanks to https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

"Netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3

let g:ackprg = 'ag --nogroup --nocolor --column'
"if !isdirectory("./.git/")
"endif

autocmd StdinReadPre * let s:std_in=1


"Go to last tab with <tt>
let g:lasttab = 1
nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" enable line numbers
" " make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


autocmd filetype nerdtree highlight javascript_icon ctermbg=none ctermfg=Red guifg=#ffa500

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile

" Copy stuff to clipboard 
" vnoremap <C-c> :'<,'>w !xclip -selection clipboard<CR><CR>
" vnoremap <C-c> :w !xclip -selection clipboard<CR><CR>
vnoremap <C-c> "+y
map <C-p> "+P

" For CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap <F2> :w<CR>
