inoremap jk <ESC>
" let mapleader = "\<Space>"

syntax on
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=0
noremap <F6> :Phpcs<CR>
set backspace=indent,eol,start

set laststatus=2
set statusline+=%F

" Ensure PEP 8 indentation for Python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Formatting for other file types
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flag unnecessary whitespace
highlight BadWhitespace ctermfg=16 ctermbg=9 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Use UTF-8
set encoding=utf-8

" Split screen commands
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za


" Stuff for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Put all plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()
filetype plugin indent on
"
"colorscheme badwolf
"
"au BufRead, BufNewFile *.ts setfiletype typescript
"au BufNewFile,BufRead *.ejs set filetype=html
"
"" Stuff for Pathogen
" execute pathogen#infect()
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
"
" nmap <Leader>u :call phpactor#UseAdd()<CR>
" nmap <Leader>mm :call phpactor#ContextMenu()<CR>
" nmap <Leader>o :call phpactor#GotoDefinition()<CR>
" nmap <Leader>tt :call phpactor#Transform()<CR>
" nmap <Leader>cc :call phpactor#ClassNew()<CR>
" vmap <silent><Leader>em :<C-u>call phpactor#ExtractMethod()<CR>
" 
" autocmd FileType php setlocal omnifunc=phpactor#Complete
" "
" ""To make NERDTree open on startup
" "autocmd vimenter * NERDTree
" "
" nmap <Leader>n :NERDTreeToggle<CR>
