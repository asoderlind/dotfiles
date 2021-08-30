let mapleader=","

syntax on
set number
set mouse=a
set ttyfast
set clipboard+=unnamedplus

autocmd BufWritePost ~/repos/dwmblocks/blocks.h !cd ~/repos/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }
