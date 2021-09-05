vim.g.mapleader = ","
local map = vim.api.nvim_set_keymap

--- Basics

-- easy caps
map('i', '<c-u>', '<ESC>viwUi', {noremap=true})
map('n', '<c-u>', 'viwU<Esc>', {noremap=true})

-- TAB to move between buffers
map('n', '<TAB>', ':bnext<CR>', {noremap=true})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap=true})

-- alternate way to save
map('n', '<C-s>', ':w<CR>', {noremap=true})

-- better tabbing
map('v', '<', '<gv', {noremap=true})
map('v', '>', '>gv', {noremap=true})

-- use alt + hjkl to resize windows 
map('n', '<M-j>', ':resize +2<CR>', {noremap=true})
map('n', '<M-k>', ':resize -2<CR>', {noremap=true})
map('n', '<M-h>', ':vertical resize -2<CR>', {noremap=true})
map('n', '<M-l>', ':vertical resize +2<CR>', {noremap=true})

-- better window navigation
map('n', '<C-h>', '<C-w>h', {noremap=true})
map('n', '<C-j>', '<C-w>j', {noremap=true})
map('n', '<C-k>', '<C-w>k', {noremap=true})
map('n', '<C-l>', '<C-w>l', {noremap=true})

-- custom escape
map('i', 'jk', '<ESC>', {noremap=true, silent=true}) 
map('i', 'kj', '<ESC>', {noremap=true, silent=true}) 

-- quicker editing and sourcing of init.lua
map('n', '<Leader>ve' ,':tabnew /home/axel/.config/nvim/init.lua<CR>', {noremap=true})
map('n', '<Leader>vs' ,':source /home/axel/.config/nvim/init.lua<CR>', {noremap=true})

-- compiling python
map('i', '<Leader>p', '<Esc>:w<CR>:!python %<CR>', {noremap=true}) 
map('n', '<Leader>p', ':w<CR>:!python %<CR>', {noremap=true})

--- Plugin mappings

-- nvimTree
map('n', '<C-n>',     ':NvimTreeToggle<CR>',   {noremap=true})
map('n', '<Leader>r', ':NvimTreeRefresh<CR>',  {noremap=true})
map('n', '<Leader>n', ':NvimTreeFindFile<CR>', {noremap=true})
map('n', '<Leader>t', ':NvimTreeFocus<CR>',    {noremap=true})
