""" OPTIONS
let mapleader=","
syntax enable   					" enable syntax highlighting
set hidden					      " required to keep multiple buffers open set number
set encoding=utf-8				" the encoding displayed
set pumheight=10				  " make popup menu smaller
set fileencoding=utf-8		" the encoding written to file
set ruler					        " show cursor position at all times
set cmdheight=2					  " more space for displaying message
set mouse=a					      " enable mouse
set splitbelow
set splitright
set expandtab
set t_Co=256    					" support 256 colors
set tabstop=2		    			" insert 2 spaces for a tab
set autoindent			  		" good auto indent
set noshowmode				  	" recommended by coc
set nowritebackup				  " recommended by coc
set updatetime=300				" faster completion
set timeoutlen=500    		" by default is 1000 ms
set formatoptions-=cro		" stop newline continuation of comments
set ttyfast
set clipboard+=unnamedplus  " set global clipboard
set number                " set row numbers

" Plugin support
lua require('plugins')

""" KEYBINDINGS
" easy caps
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general will move to text bugger
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR> 

" alternate way to save
nnoremap <C-s> :w<CR>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Custom escape sequence
inoremap <silent> jk <ESC>
inoremap <silent> kj <ESC>

" Quicker editing and sourcing of init.vim
nnoremap <Leader>ve :tabnew $MYVIMRC<CR>
nnoremap <Leader>vs :source /home/axel/.config/nvim/init.vim<CR>

" NvimTree Config
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>t :NvimTreeFocus<CR>

" Compiling code
inoremap <leader>p <Esc>:w<CR>:!python %<CR>
nnoremap <leader>p :w<CR>:!python %<CR>

" Autocommand
" autocmd BufWritePost ~/repos/dwmblocks/blocks.h !cd ~/repos/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }
