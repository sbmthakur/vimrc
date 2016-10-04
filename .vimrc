set number
set relativenumber
set tabstop=4

syntax on 

imap jk <Esc>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-d> <Esc>:wq<CR>
nnoremap <C-d> :wq<CR>
inoremap <C-q> <Esc>:q!<CR>
nnoremap <C-q> :q!<CR>
"Yank full funcition block.
nnoremap <F2> V%y
"Delete full funcition block.
nnoremap <F3> V%d
"Copy a code block.
nnoremap <F4> v%y 
"Delete a block along with preceding code. For functions, loops etc.
nnoremap <F5> v%d

"remove relative number when entering insert mode
autocmd InsertEnter * :set norelativenumber
"set relative number when leaving insert mode
autocmd InsertLeave * :set relativenumber

"auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

colors shubham