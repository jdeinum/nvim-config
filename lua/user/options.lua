local o = vim.o
local bo = vim.bo
local wo = vim.wo
local vim = vim

-- colors
o.termguicolors = true
o.background = 'dark'
vim.cmd("colorscheme nightfly")
o.syntax = 'on'


-- indents
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
bo.autoindent = true
bo.smartindent = true
bo.matchpairs = "(:),[:],{:}"

-- undo
o.undofile = true
o.undodir = "/home/deinum/.vimdid"


-- gui options
wo.colorcolumn = '80'
o.mouse = 'a'
wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false
vim.cmd("set nofoldenable")



-- wild menu
o.wildmenu = true
o.wildmode = 'list:longest'


-- wrapping options
o.formatoptions = "tcrqnb"


-- search option
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.gdefault = true






-- others
o.errorbells = false
o.showmode = false
-- bo.swapfile = false
o.backup = false
o.incsearch = true
o.hidden = true
o.completeopt='menuone,noinsert,noselect'
o.timeoutlen = 300
o.encoding = 'utf-8'
o.hidden = true
o.splitright = true
o.splitbelow = true

vim.cmd [[
" Spell check
set spelllang=en_us
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
inoremap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
hi SpellBad gui=underline guifg=#ffcb6
hi SpellCap gui=underline guifg=#ffcb6
nnoremap <silent> <F1> :set spell!<cr>

set directory^=$HOME/.vim/tmp//
]]









