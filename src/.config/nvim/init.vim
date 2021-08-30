let mapleader=","

syntax on
set number
set mouse=a
set ttyfast
set clipboard+=unnamedplus

lua require('plugins')

" Custom escape sequence
inoremap <silent> jk <ESC>

" Quicker editing and sourcing of init.vim
nnoremap <Leader>ve :e $MYVIMRC<CR>
nnoremap <Leader>vs :source /home/axel/.config/nvim/init.vim<CR>

" NvimTree Config
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them

" Autocommands
autocmd BufWritePost ~/repos/dwmblocks/blocks.h !cd ~/repos/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }
