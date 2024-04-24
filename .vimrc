syntax on
set autoindent
set smartindent

noremap i k
noremap j h
noremap k j
noremap l l
noremap s a
noremap S A
noremap a i
noremap A I

noremap J b
noremap L e
noremap f w
noremap w f
noremap W F
noremap F W
noremap z t
noremap Z T
noremap t <C-d>zz
noremap T <C-u>zz
noremap n nzzzv
noremap N Nzzzv
noremap b u
noremap B <C-r>
noremap e r

nnoremap r "+y
nnoremap R "+Y
vnoremap r "+y
vnoremap R "+Y

nnoremap u "+p
nnoremap U p
vnoremap u "+p
vnoremap U p

noremap q ^
noremap Q gg
noremap P G

vnoremap q ^
vnoremap Q gg
nnoremap p $
vnoremap p $h
vnoremap P G$

inoremap jk <ESC>

nnoremap ; :
vnoremap ; :

nnoremap <A-i> :m .-2<CR>==
nnoremap <A-k> :m .+1<CR>==
vnoremap <A-i> :m '<-2<CR>gv=gv
vnoremap <A-k> :m '>+1<CR>gv=gv

nnoremap I 3k
nnoremap K 3j
vnoremap I 3k
vnoremap K 3j

nmap <space> a<space><ESC>
nmap <cr> a<cr><ESC>

nmap ! magg=G`a
noremap @ =

" Commenting
nnoremap h I//<Esc>
vnoremap h I//<Esc>

nnoremap H I<Del><Del><Esc>
vnoremap H I<Del><Del><Esc>
