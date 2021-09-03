local set = vim.opt

--- Basic
--set.syntax=true			--  enable syntax highlighting
set.hidden=true			--  required to keep multiple buffers open set number
set.encoding='utf-8'		--  the encoding displayed
set.pumheight=10		--  make popup menu smaller
set.fileencoding='utf-8'	--  the encoding written to file
set.ruler=true		        --  show cursor position at all times
set.cmdheight=2			--  more space for displaying message
set.mouse='a'			--  enable mouse
set.splitbelow=true
set.splitright=true
set.expandtab=true
--set.t_Co=256    		--  support 256 colors
set.tabstop=2		    	--  insert 2 spaces for a tab
set.autoindent=true		--  good auto indent
--set.noshowmode=true	  	--  recommended by coc
--set.nowritebackup=true		--  recommended by coc
set.updatetime=300		--  faster completion
set.timeoutlen=500    		--  by default is 1000 ms
set.ttyfast=true
-- set.clipboard += 'unnamedplus'	--  set global clipboard
set.number=true                 --  set row numbers
